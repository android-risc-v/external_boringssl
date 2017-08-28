/* Copyright (c) 2017, Google Inc.
 *
 * Permission to use, copy, modify, and/or distribute this software for any
 * purpose with or without fee is hereby granted, provided that the above
 * copyright notice and this permission notice appear in all copies.
 *
 * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
 * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
 * SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
 * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
 * OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
 * CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE. */

#ifndef OPENSSL_HEADER_SSL_SPAN_H
#define OPENSSL_HEADER_SSL_SPAN_H

#include <openssl/base.h>

#if !defined(BORINGSSL_NO_CXX)

extern "C++" {

#include <algorithm>
#include <type_traits>

namespace bssl {

template <typename T>
class Span;

namespace internal {
template <typename T>
class SpanBase {
  // Put comparison operator implementations into a base class with const T, so
  // they can be used with any type that implicitly converts into a Span.
  static_assert(std::is_const<T>::value,
                "Span<T> must be derived from SpanBase<const T>");

  friend bool operator==(Span<T> lhs, Span<T> rhs) {
    // MSVC issues warning C4996 because std::equal is unsafe. The pragma to
    // suppress the warning mysteriously has no effect, hence this
    // implementation. See
    // https://msdn.microsoft.com/en-us/library/aa985974.aspx.
    if (lhs.size() != rhs.size()) {
      return false;
    }
    for (T *l = lhs.begin(), *r = rhs.begin(); l != lhs.end() && r != rhs.end();
         ++l, ++r) {
      if (*l != *r) {
        return false;
      }
    }
    return true;
  }

  friend bool operator!=(Span<T> lhs, Span<T> rhs) { return !(lhs == rhs); }
};
}  // namespace internal

// A Span<T> is a non-owning reference to a contiguous array of objects of type
// |T|. Conceptually, a Span is a simple a pointer to |T| and a count of
// elements accessible via that pointer. The elements referenced by the Span can
// be mutated if |T| is mutable.
//
// A Span can be constructed from container types implementing |data()| and
// |size()| methods. If |T| is constant, construction from a container type is
// implicit. This allows writing methods that accept data from some unspecified
// container type:
//
// // Foo views data referenced by v.
// void Foo(bssl::Span<const uint8_t> v) { ... }
//
// std::vector<uint8_t> vec;
// Foo(vec);
//
// For mutable Spans, conversion is explicit:
//
// // FooMutate mutates data referenced by v.
// void FooMutate(bssl::Span<uint8_t> v) { ... }
//
// FooMutate(bssl::Span<uint8_t>(vec));
//
// You can also use the |MakeSpan| and |MakeConstSpan| factory methods to
// construct Spans in order to deduce the type of the Span automatically.
//
// FooMutate(bssl::MakeSpan(vec));
//
// Note that Spans have value type sematics. They are cheap to construct and
// copy, and should be passed by value whenever a method would otherwise accept
// a reference or pointer to a container or array.
template <typename T>
class Span : private internal::SpanBase<const T> {
 private:
  template <bool B, class V = void>
  using enable_if_t = typename std::enable_if<B, V>::type;

  // Heuristically test whether C is a container type that can be converted into
  // a Span by checking for data() and size() member functions.
  template <typename C>
  using EnableIfContainer = enable_if_t<
      std::is_convertible<decltype(std::declval<C>().data()), T *>::value &&
      std::is_integral<decltype(std::declval<C>().size())>::value>;

 public:
  constexpr Span() : Span(nullptr, 0) {}
  constexpr Span(T *ptr, size_t len) : data_(ptr), size_(len) {}

  template <size_t N>
  constexpr Span(T (&array)[N]) : Span(array, N) {}

  template <typename C, typename = EnableIfContainer<C>,
            typename = enable_if_t<std::is_const<T>::value, C>>
  Span(const C &container) : data_(container.data()), size_(container.size()) {}

  template <typename C, typename = EnableIfContainer<C>,
            typename = enable_if_t<!std::is_const<T>::value, C>>
  explicit Span(C &container)
      : data_(container.data()), size_(container.size()) {}

  T *data() const { return data_; }
  size_t size() const { return size_; }

  T *begin() const { return data_; }
  const T *cbegin() const { return data_; }
  T *end() const { return data_ + size_; };
  const T *cend() const { return end(); };

  T &operator[](size_t i) const { return data_[i]; }
  T &at(size_t i) const { return data_[i]; }

 private:
  T *data_;
  size_t size_;
};

template <typename T>
Span<T> MakeSpan(T *ptr, size_t size) {
  return Span<T>(ptr, size);
}

template <typename C>
auto MakeSpan(C &c) -> decltype(MakeSpan(c.data(), c.size())) {
  return MakeSpan(c.data(), c.size());
}

template <typename T>
Span<const T> MakeConstSpan(T *ptr, size_t size) {
  return Span<const T>(ptr, size);
}

template <typename C>
auto MakeConstSpan(const C &c) -> decltype(MakeConstSpan(c.data(), c.size())) {
  return MakeConstSpan(c.data(), c.size());
}

}  // namespace bssl

}  // extern C++

#endif  // !defined(BORINGSSL_NO_CXX)

#endif  // OPENSSL_HEADER_SSL_SPAN_H
