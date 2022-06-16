# Copyright (C) 2019 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file is created by generate_build_files.py. Do not edit manually.
# To specify a custom path prefix, set BORINGSSL_ROOT before including this
# file, or use list(TRANSFORM ... PREPEND) from CMake 3.12.

set(crypto_sources
  ${BORINGSSL_ROOT}err_data.c
  ${BORINGSSL_ROOT}src/crypto/asn1/a_bitstr.c
  ${BORINGSSL_ROOT}src/crypto/asn1/a_bool.c
  ${BORINGSSL_ROOT}src/crypto/asn1/a_d2i_fp.c
  ${BORINGSSL_ROOT}src/crypto/asn1/a_dup.c
  ${BORINGSSL_ROOT}src/crypto/asn1/a_gentm.c
  ${BORINGSSL_ROOT}src/crypto/asn1/a_i2d_fp.c
  ${BORINGSSL_ROOT}src/crypto/asn1/a_int.c
  ${BORINGSSL_ROOT}src/crypto/asn1/a_mbstr.c
  ${BORINGSSL_ROOT}src/crypto/asn1/a_object.c
  ${BORINGSSL_ROOT}src/crypto/asn1/a_octet.c
  ${BORINGSSL_ROOT}src/crypto/asn1/a_print.c
  ${BORINGSSL_ROOT}src/crypto/asn1/a_strex.c
  ${BORINGSSL_ROOT}src/crypto/asn1/a_strnid.c
  ${BORINGSSL_ROOT}src/crypto/asn1/a_time.c
  ${BORINGSSL_ROOT}src/crypto/asn1/a_type.c
  ${BORINGSSL_ROOT}src/crypto/asn1/a_utctm.c
  ${BORINGSSL_ROOT}src/crypto/asn1/a_utf8.c
  ${BORINGSSL_ROOT}src/crypto/asn1/asn1_lib.c
  ${BORINGSSL_ROOT}src/crypto/asn1/asn1_par.c
  ${BORINGSSL_ROOT}src/crypto/asn1/asn_pack.c
  ${BORINGSSL_ROOT}src/crypto/asn1/f_int.c
  ${BORINGSSL_ROOT}src/crypto/asn1/f_string.c
  ${BORINGSSL_ROOT}src/crypto/asn1/tasn_dec.c
  ${BORINGSSL_ROOT}src/crypto/asn1/tasn_enc.c
  ${BORINGSSL_ROOT}src/crypto/asn1/tasn_fre.c
  ${BORINGSSL_ROOT}src/crypto/asn1/tasn_new.c
  ${BORINGSSL_ROOT}src/crypto/asn1/tasn_typ.c
  ${BORINGSSL_ROOT}src/crypto/asn1/tasn_utl.c
  ${BORINGSSL_ROOT}src/crypto/asn1/time_support.c
  ${BORINGSSL_ROOT}src/crypto/base64/base64.c
  ${BORINGSSL_ROOT}src/crypto/bio/bio.c
  ${BORINGSSL_ROOT}src/crypto/bio/bio_mem.c
  ${BORINGSSL_ROOT}src/crypto/bio/connect.c
  ${BORINGSSL_ROOT}src/crypto/bio/fd.c
  ${BORINGSSL_ROOT}src/crypto/bio/file.c
  ${BORINGSSL_ROOT}src/crypto/bio/hexdump.c
  ${BORINGSSL_ROOT}src/crypto/bio/pair.c
  ${BORINGSSL_ROOT}src/crypto/bio/printf.c
  ${BORINGSSL_ROOT}src/crypto/bio/socket.c
  ${BORINGSSL_ROOT}src/crypto/bio/socket_helper.c
  ${BORINGSSL_ROOT}src/crypto/blake2/blake2.c
  ${BORINGSSL_ROOT}src/crypto/bn_extra/bn_asn1.c
  ${BORINGSSL_ROOT}src/crypto/bn_extra/convert.c
  ${BORINGSSL_ROOT}src/crypto/buf/buf.c
  ${BORINGSSL_ROOT}src/crypto/bytestring/asn1_compat.c
  ${BORINGSSL_ROOT}src/crypto/bytestring/ber.c
  ${BORINGSSL_ROOT}src/crypto/bytestring/cbb.c
  ${BORINGSSL_ROOT}src/crypto/bytestring/cbs.c
  ${BORINGSSL_ROOT}src/crypto/bytestring/unicode.c
  ${BORINGSSL_ROOT}src/crypto/chacha/chacha.c
  ${BORINGSSL_ROOT}src/crypto/cipher_extra/cipher_extra.c
  ${BORINGSSL_ROOT}src/crypto/cipher_extra/derive_key.c
  ${BORINGSSL_ROOT}src/crypto/cipher_extra/e_aesctrhmac.c
  ${BORINGSSL_ROOT}src/crypto/cipher_extra/e_aesgcmsiv.c
  ${BORINGSSL_ROOT}src/crypto/cipher_extra/e_chacha20poly1305.c
  ${BORINGSSL_ROOT}src/crypto/cipher_extra/e_des.c
  ${BORINGSSL_ROOT}src/crypto/cipher_extra/e_null.c
  ${BORINGSSL_ROOT}src/crypto/cipher_extra/e_rc2.c
  ${BORINGSSL_ROOT}src/crypto/cipher_extra/e_rc4.c
  ${BORINGSSL_ROOT}src/crypto/cipher_extra/e_tls.c
  ${BORINGSSL_ROOT}src/crypto/cipher_extra/tls_cbc.c
  ${BORINGSSL_ROOT}src/crypto/conf/conf.c
  ${BORINGSSL_ROOT}src/crypto/cpu_aarch64_apple.c
  ${BORINGSSL_ROOT}src/crypto/cpu_aarch64_fuchsia.c
  ${BORINGSSL_ROOT}src/crypto/cpu_aarch64_linux.c
  ${BORINGSSL_ROOT}src/crypto/cpu_aarch64_win.c
  ${BORINGSSL_ROOT}src/crypto/cpu_arm.c
  ${BORINGSSL_ROOT}src/crypto/cpu_arm_linux.c
  ${BORINGSSL_ROOT}src/crypto/cpu_intel.c
  ${BORINGSSL_ROOT}src/crypto/cpu_ppc64le.c
  ${BORINGSSL_ROOT}src/crypto/crypto.c
  ${BORINGSSL_ROOT}src/crypto/curve25519/curve25519.c
  ${BORINGSSL_ROOT}src/crypto/curve25519/spake25519.c
  ${BORINGSSL_ROOT}src/crypto/des/des.c
  ${BORINGSSL_ROOT}src/crypto/dh_extra/dh_asn1.c
  ${BORINGSSL_ROOT}src/crypto/dh_extra/params.c
  ${BORINGSSL_ROOT}src/crypto/digest_extra/digest_extra.c
  ${BORINGSSL_ROOT}src/crypto/dsa/dsa.c
  ${BORINGSSL_ROOT}src/crypto/dsa/dsa_asn1.c
  ${BORINGSSL_ROOT}src/crypto/ec_extra/ec_asn1.c
  ${BORINGSSL_ROOT}src/crypto/ec_extra/ec_derive.c
  ${BORINGSSL_ROOT}src/crypto/ec_extra/hash_to_curve.c
  ${BORINGSSL_ROOT}src/crypto/ecdh_extra/ecdh_extra.c
  ${BORINGSSL_ROOT}src/crypto/ecdsa_extra/ecdsa_asn1.c
  ${BORINGSSL_ROOT}src/crypto/engine/engine.c
  ${BORINGSSL_ROOT}src/crypto/err/err.c
  ${BORINGSSL_ROOT}src/crypto/evp/evp.c
  ${BORINGSSL_ROOT}src/crypto/evp/evp_asn1.c
  ${BORINGSSL_ROOT}src/crypto/evp/evp_ctx.c
  ${BORINGSSL_ROOT}src/crypto/evp/p_dsa_asn1.c
  ${BORINGSSL_ROOT}src/crypto/evp/p_ec.c
  ${BORINGSSL_ROOT}src/crypto/evp/p_ec_asn1.c
  ${BORINGSSL_ROOT}src/crypto/evp/p_ed25519.c
  ${BORINGSSL_ROOT}src/crypto/evp/p_ed25519_asn1.c
  ${BORINGSSL_ROOT}src/crypto/evp/p_rsa.c
  ${BORINGSSL_ROOT}src/crypto/evp/p_rsa_asn1.c
  ${BORINGSSL_ROOT}src/crypto/evp/p_x25519.c
  ${BORINGSSL_ROOT}src/crypto/evp/p_x25519_asn1.c
  ${BORINGSSL_ROOT}src/crypto/evp/pbkdf.c
  ${BORINGSSL_ROOT}src/crypto/evp/print.c
  ${BORINGSSL_ROOT}src/crypto/evp/scrypt.c
  ${BORINGSSL_ROOT}src/crypto/evp/sign.c
  ${BORINGSSL_ROOT}src/crypto/ex_data.c
  ${BORINGSSL_ROOT}src/crypto/fipsmodule/bcm.c
  ${BORINGSSL_ROOT}src/crypto/fipsmodule/fips_shared_support.c
  ${BORINGSSL_ROOT}src/crypto/hkdf/hkdf.c
  ${BORINGSSL_ROOT}src/crypto/hpke/hpke.c
  ${BORINGSSL_ROOT}src/crypto/hrss/hrss.c
  ${BORINGSSL_ROOT}src/crypto/lhash/lhash.c
  ${BORINGSSL_ROOT}src/crypto/mem.c
  ${BORINGSSL_ROOT}src/crypto/obj/obj.c
  ${BORINGSSL_ROOT}src/crypto/obj/obj_xref.c
  ${BORINGSSL_ROOT}src/crypto/pem/pem_all.c
  ${BORINGSSL_ROOT}src/crypto/pem/pem_info.c
  ${BORINGSSL_ROOT}src/crypto/pem/pem_lib.c
  ${BORINGSSL_ROOT}src/crypto/pem/pem_oth.c
  ${BORINGSSL_ROOT}src/crypto/pem/pem_pk8.c
  ${BORINGSSL_ROOT}src/crypto/pem/pem_pkey.c
  ${BORINGSSL_ROOT}src/crypto/pem/pem_x509.c
  ${BORINGSSL_ROOT}src/crypto/pem/pem_xaux.c
  ${BORINGSSL_ROOT}src/crypto/pkcs7/pkcs7.c
  ${BORINGSSL_ROOT}src/crypto/pkcs7/pkcs7_x509.c
  ${BORINGSSL_ROOT}src/crypto/pkcs8/p5_pbev2.c
  ${BORINGSSL_ROOT}src/crypto/pkcs8/pkcs8.c
  ${BORINGSSL_ROOT}src/crypto/pkcs8/pkcs8_x509.c
  ${BORINGSSL_ROOT}src/crypto/poly1305/poly1305.c
  ${BORINGSSL_ROOT}src/crypto/poly1305/poly1305_arm.c
  ${BORINGSSL_ROOT}src/crypto/poly1305/poly1305_vec.c
  ${BORINGSSL_ROOT}src/crypto/pool/pool.c
  ${BORINGSSL_ROOT}src/crypto/rand_extra/deterministic.c
  ${BORINGSSL_ROOT}src/crypto/rand_extra/forkunsafe.c
  ${BORINGSSL_ROOT}src/crypto/rand_extra/fuchsia.c
  ${BORINGSSL_ROOT}src/crypto/rand_extra/passive.c
  ${BORINGSSL_ROOT}src/crypto/rand_extra/rand_extra.c
  ${BORINGSSL_ROOT}src/crypto/rand_extra/windows.c
  ${BORINGSSL_ROOT}src/crypto/rc4/rc4.c
  ${BORINGSSL_ROOT}src/crypto/refcount_c11.c
  ${BORINGSSL_ROOT}src/crypto/refcount_lock.c
  ${BORINGSSL_ROOT}src/crypto/rsa_extra/rsa_asn1.c
  ${BORINGSSL_ROOT}src/crypto/rsa_extra/rsa_print.c
  ${BORINGSSL_ROOT}src/crypto/siphash/siphash.c
  ${BORINGSSL_ROOT}src/crypto/stack/stack.c
  ${BORINGSSL_ROOT}src/crypto/thread.c
  ${BORINGSSL_ROOT}src/crypto/thread_none.c
  ${BORINGSSL_ROOT}src/crypto/thread_pthread.c
  ${BORINGSSL_ROOT}src/crypto/thread_win.c
  ${BORINGSSL_ROOT}src/crypto/trust_token/pmbtoken.c
  ${BORINGSSL_ROOT}src/crypto/trust_token/trust_token.c
  ${BORINGSSL_ROOT}src/crypto/trust_token/voprf.c
  ${BORINGSSL_ROOT}src/crypto/x509/a_digest.c
  ${BORINGSSL_ROOT}src/crypto/x509/a_sign.c
  ${BORINGSSL_ROOT}src/crypto/x509/a_verify.c
  ${BORINGSSL_ROOT}src/crypto/x509/algorithm.c
  ${BORINGSSL_ROOT}src/crypto/x509/asn1_gen.c
  ${BORINGSSL_ROOT}src/crypto/x509/by_dir.c
  ${BORINGSSL_ROOT}src/crypto/x509/by_file.c
  ${BORINGSSL_ROOT}src/crypto/x509/i2d_pr.c
  ${BORINGSSL_ROOT}src/crypto/x509/name_print.c
  ${BORINGSSL_ROOT}src/crypto/x509/rsa_pss.c
  ${BORINGSSL_ROOT}src/crypto/x509/t_crl.c
  ${BORINGSSL_ROOT}src/crypto/x509/t_req.c
  ${BORINGSSL_ROOT}src/crypto/x509/t_x509.c
  ${BORINGSSL_ROOT}src/crypto/x509/t_x509a.c
  ${BORINGSSL_ROOT}src/crypto/x509/x509.c
  ${BORINGSSL_ROOT}src/crypto/x509/x509_att.c
  ${BORINGSSL_ROOT}src/crypto/x509/x509_cmp.c
  ${BORINGSSL_ROOT}src/crypto/x509/x509_d2.c
  ${BORINGSSL_ROOT}src/crypto/x509/x509_def.c
  ${BORINGSSL_ROOT}src/crypto/x509/x509_ext.c
  ${BORINGSSL_ROOT}src/crypto/x509/x509_lu.c
  ${BORINGSSL_ROOT}src/crypto/x509/x509_obj.c
  ${BORINGSSL_ROOT}src/crypto/x509/x509_req.c
  ${BORINGSSL_ROOT}src/crypto/x509/x509_set.c
  ${BORINGSSL_ROOT}src/crypto/x509/x509_trs.c
  ${BORINGSSL_ROOT}src/crypto/x509/x509_txt.c
  ${BORINGSSL_ROOT}src/crypto/x509/x509_v3.c
  ${BORINGSSL_ROOT}src/crypto/x509/x509_vfy.c
  ${BORINGSSL_ROOT}src/crypto/x509/x509_vpm.c
  ${BORINGSSL_ROOT}src/crypto/x509/x509cset.c
  ${BORINGSSL_ROOT}src/crypto/x509/x509name.c
  ${BORINGSSL_ROOT}src/crypto/x509/x509rset.c
  ${BORINGSSL_ROOT}src/crypto/x509/x509spki.c
  ${BORINGSSL_ROOT}src/crypto/x509/x_algor.c
  ${BORINGSSL_ROOT}src/crypto/x509/x_all.c
  ${BORINGSSL_ROOT}src/crypto/x509/x_attrib.c
  ${BORINGSSL_ROOT}src/crypto/x509/x_crl.c
  ${BORINGSSL_ROOT}src/crypto/x509/x_exten.c
  ${BORINGSSL_ROOT}src/crypto/x509/x_info.c
  ${BORINGSSL_ROOT}src/crypto/x509/x_name.c
  ${BORINGSSL_ROOT}src/crypto/x509/x_pkey.c
  ${BORINGSSL_ROOT}src/crypto/x509/x_pubkey.c
  ${BORINGSSL_ROOT}src/crypto/x509/x_req.c
  ${BORINGSSL_ROOT}src/crypto/x509/x_sig.c
  ${BORINGSSL_ROOT}src/crypto/x509/x_spki.c
  ${BORINGSSL_ROOT}src/crypto/x509/x_val.c
  ${BORINGSSL_ROOT}src/crypto/x509/x_x509.c
  ${BORINGSSL_ROOT}src/crypto/x509/x_x509a.c
  ${BORINGSSL_ROOT}src/crypto/x509v3/pcy_cache.c
  ${BORINGSSL_ROOT}src/crypto/x509v3/pcy_data.c
  ${BORINGSSL_ROOT}src/crypto/x509v3/pcy_lib.c
  ${BORINGSSL_ROOT}src/crypto/x509v3/pcy_map.c
  ${BORINGSSL_ROOT}src/crypto/x509v3/pcy_node.c
  ${BORINGSSL_ROOT}src/crypto/x509v3/pcy_tree.c
  ${BORINGSSL_ROOT}src/crypto/x509v3/v3_akey.c
  ${BORINGSSL_ROOT}src/crypto/x509v3/v3_akeya.c
  ${BORINGSSL_ROOT}src/crypto/x509v3/v3_alt.c
  ${BORINGSSL_ROOT}src/crypto/x509v3/v3_bcons.c
  ${BORINGSSL_ROOT}src/crypto/x509v3/v3_bitst.c
  ${BORINGSSL_ROOT}src/crypto/x509v3/v3_conf.c
  ${BORINGSSL_ROOT}src/crypto/x509v3/v3_cpols.c
  ${BORINGSSL_ROOT}src/crypto/x509v3/v3_crld.c
  ${BORINGSSL_ROOT}src/crypto/x509v3/v3_enum.c
  ${BORINGSSL_ROOT}src/crypto/x509v3/v3_extku.c
  ${BORINGSSL_ROOT}src/crypto/x509v3/v3_genn.c
  ${BORINGSSL_ROOT}src/crypto/x509v3/v3_ia5.c
  ${BORINGSSL_ROOT}src/crypto/x509v3/v3_info.c
  ${BORINGSSL_ROOT}src/crypto/x509v3/v3_int.c
  ${BORINGSSL_ROOT}src/crypto/x509v3/v3_lib.c
  ${BORINGSSL_ROOT}src/crypto/x509v3/v3_ncons.c
  ${BORINGSSL_ROOT}src/crypto/x509v3/v3_ocsp.c
  ${BORINGSSL_ROOT}src/crypto/x509v3/v3_pci.c
  ${BORINGSSL_ROOT}src/crypto/x509v3/v3_pcia.c
  ${BORINGSSL_ROOT}src/crypto/x509v3/v3_pcons.c
  ${BORINGSSL_ROOT}src/crypto/x509v3/v3_pmaps.c
  ${BORINGSSL_ROOT}src/crypto/x509v3/v3_prn.c
  ${BORINGSSL_ROOT}src/crypto/x509v3/v3_purp.c
  ${BORINGSSL_ROOT}src/crypto/x509v3/v3_skey.c
  ${BORINGSSL_ROOT}src/crypto/x509v3/v3_utl.c
)
set(ssl_sources
  ${BORINGSSL_ROOT}src/ssl/bio_ssl.cc
  ${BORINGSSL_ROOT}src/ssl/d1_both.cc
  ${BORINGSSL_ROOT}src/ssl/d1_lib.cc
  ${BORINGSSL_ROOT}src/ssl/d1_pkt.cc
  ${BORINGSSL_ROOT}src/ssl/d1_srtp.cc
  ${BORINGSSL_ROOT}src/ssl/dtls_method.cc
  ${BORINGSSL_ROOT}src/ssl/dtls_record.cc
  ${BORINGSSL_ROOT}src/ssl/encrypted_client_hello.cc
  ${BORINGSSL_ROOT}src/ssl/extensions.cc
  ${BORINGSSL_ROOT}src/ssl/handoff.cc
  ${BORINGSSL_ROOT}src/ssl/handshake.cc
  ${BORINGSSL_ROOT}src/ssl/handshake_client.cc
  ${BORINGSSL_ROOT}src/ssl/handshake_server.cc
  ${BORINGSSL_ROOT}src/ssl/s3_both.cc
  ${BORINGSSL_ROOT}src/ssl/s3_lib.cc
  ${BORINGSSL_ROOT}src/ssl/s3_pkt.cc
  ${BORINGSSL_ROOT}src/ssl/ssl_aead_ctx.cc
  ${BORINGSSL_ROOT}src/ssl/ssl_asn1.cc
  ${BORINGSSL_ROOT}src/ssl/ssl_buffer.cc
  ${BORINGSSL_ROOT}src/ssl/ssl_cert.cc
  ${BORINGSSL_ROOT}src/ssl/ssl_cipher.cc
  ${BORINGSSL_ROOT}src/ssl/ssl_file.cc
  ${BORINGSSL_ROOT}src/ssl/ssl_key_share.cc
  ${BORINGSSL_ROOT}src/ssl/ssl_lib.cc
  ${BORINGSSL_ROOT}src/ssl/ssl_privkey.cc
  ${BORINGSSL_ROOT}src/ssl/ssl_session.cc
  ${BORINGSSL_ROOT}src/ssl/ssl_stat.cc
  ${BORINGSSL_ROOT}src/ssl/ssl_transcript.cc
  ${BORINGSSL_ROOT}src/ssl/ssl_versions.cc
  ${BORINGSSL_ROOT}src/ssl/ssl_x509.cc
  ${BORINGSSL_ROOT}src/ssl/t1_enc.cc
  ${BORINGSSL_ROOT}src/ssl/tls13_both.cc
  ${BORINGSSL_ROOT}src/ssl/tls13_client.cc
  ${BORINGSSL_ROOT}src/ssl/tls13_enc.cc
  ${BORINGSSL_ROOT}src/ssl/tls13_server.cc
  ${BORINGSSL_ROOT}src/ssl/tls_method.cc
  ${BORINGSSL_ROOT}src/ssl/tls_record.cc
)
set(tool_sources
  ${BORINGSSL_ROOT}src/tool/args.cc
  ${BORINGSSL_ROOT}src/tool/ciphers.cc
  ${BORINGSSL_ROOT}src/tool/client.cc
  ${BORINGSSL_ROOT}src/tool/const.cc
  ${BORINGSSL_ROOT}src/tool/digest.cc
  ${BORINGSSL_ROOT}src/tool/fd.cc
  ${BORINGSSL_ROOT}src/tool/file.cc
  ${BORINGSSL_ROOT}src/tool/generate_ech.cc
  ${BORINGSSL_ROOT}src/tool/generate_ed25519.cc
  ${BORINGSSL_ROOT}src/tool/genrsa.cc
  ${BORINGSSL_ROOT}src/tool/pkcs12.cc
  ${BORINGSSL_ROOT}src/tool/rand.cc
  ${BORINGSSL_ROOT}src/tool/server.cc
  ${BORINGSSL_ROOT}src/tool/sign.cc
  ${BORINGSSL_ROOT}src/tool/speed.cc
  ${BORINGSSL_ROOT}src/tool/tool.cc
  ${BORINGSSL_ROOT}src/tool/transport_common.cc
)
set(test_support_sources
  ${BORINGSSL_ROOT}src/crypto/test/file_test.cc
  ${BORINGSSL_ROOT}src/crypto/test/malloc.cc
  ${BORINGSSL_ROOT}src/crypto/test/test_util.cc
  ${BORINGSSL_ROOT}src/crypto/test/wycheproof_util.cc
)
set(crypto_test_sources
  ${BORINGSSL_ROOT}crypto_test_data.cc
  ${BORINGSSL_ROOT}src/crypto/abi_self_test.cc
  ${BORINGSSL_ROOT}src/crypto/asn1/asn1_test.cc
  ${BORINGSSL_ROOT}src/crypto/base64/base64_test.cc
  ${BORINGSSL_ROOT}src/crypto/bio/bio_test.cc
  ${BORINGSSL_ROOT}src/crypto/blake2/blake2_test.cc
  ${BORINGSSL_ROOT}src/crypto/buf/buf_test.cc
  ${BORINGSSL_ROOT}src/crypto/bytestring/bytestring_test.cc
  ${BORINGSSL_ROOT}src/crypto/chacha/chacha_test.cc
  ${BORINGSSL_ROOT}src/crypto/cipher_extra/aead_test.cc
  ${BORINGSSL_ROOT}src/crypto/cipher_extra/cipher_test.cc
  ${BORINGSSL_ROOT}src/crypto/compiler_test.cc
  ${BORINGSSL_ROOT}src/crypto/conf/conf_test.cc
  ${BORINGSSL_ROOT}src/crypto/constant_time_test.cc
  ${BORINGSSL_ROOT}src/crypto/cpu_arm_linux_test.cc
  ${BORINGSSL_ROOT}src/crypto/crypto_test.cc
  ${BORINGSSL_ROOT}src/crypto/curve25519/ed25519_test.cc
  ${BORINGSSL_ROOT}src/crypto/curve25519/spake25519_test.cc
  ${BORINGSSL_ROOT}src/crypto/curve25519/x25519_test.cc
  ${BORINGSSL_ROOT}src/crypto/dh_extra/dh_test.cc
  ${BORINGSSL_ROOT}src/crypto/digest_extra/digest_test.cc
  ${BORINGSSL_ROOT}src/crypto/dsa/dsa_test.cc
  ${BORINGSSL_ROOT}src/crypto/ecdh_extra/ecdh_test.cc
  ${BORINGSSL_ROOT}src/crypto/err/err_test.cc
  ${BORINGSSL_ROOT}src/crypto/evp/evp_extra_test.cc
  ${BORINGSSL_ROOT}src/crypto/evp/evp_test.cc
  ${BORINGSSL_ROOT}src/crypto/evp/pbkdf_test.cc
  ${BORINGSSL_ROOT}src/crypto/evp/scrypt_test.cc
  ${BORINGSSL_ROOT}src/crypto/fipsmodule/aes/aes_test.cc
  ${BORINGSSL_ROOT}src/crypto/fipsmodule/bn/bn_test.cc
  ${BORINGSSL_ROOT}src/crypto/fipsmodule/cmac/cmac_test.cc
  ${BORINGSSL_ROOT}src/crypto/fipsmodule/ec/ec_test.cc
  ${BORINGSSL_ROOT}src/crypto/fipsmodule/ec/p256-nistz_test.cc
  ${BORINGSSL_ROOT}src/crypto/fipsmodule/ecdsa/ecdsa_test.cc
  ${BORINGSSL_ROOT}src/crypto/fipsmodule/md5/md5_test.cc
  ${BORINGSSL_ROOT}src/crypto/fipsmodule/modes/gcm_test.cc
  ${BORINGSSL_ROOT}src/crypto/fipsmodule/rand/ctrdrbg_test.cc
  ${BORINGSSL_ROOT}src/crypto/fipsmodule/rand/fork_detect_test.cc
  ${BORINGSSL_ROOT}src/crypto/fipsmodule/service_indicator/service_indicator_test.cc
  ${BORINGSSL_ROOT}src/crypto/fipsmodule/sha/sha_test.cc
  ${BORINGSSL_ROOT}src/crypto/hkdf/hkdf_test.cc
  ${BORINGSSL_ROOT}src/crypto/hmac_extra/hmac_test.cc
  ${BORINGSSL_ROOT}src/crypto/hpke/hpke_test.cc
  ${BORINGSSL_ROOT}src/crypto/hrss/hrss_test.cc
  ${BORINGSSL_ROOT}src/crypto/impl_dispatch_test.cc
  ${BORINGSSL_ROOT}src/crypto/lhash/lhash_test.cc
  ${BORINGSSL_ROOT}src/crypto/obj/obj_test.cc
  ${BORINGSSL_ROOT}src/crypto/pem/pem_test.cc
  ${BORINGSSL_ROOT}src/crypto/pkcs7/pkcs7_test.cc
  ${BORINGSSL_ROOT}src/crypto/pkcs8/pkcs12_test.cc
  ${BORINGSSL_ROOT}src/crypto/pkcs8/pkcs8_test.cc
  ${BORINGSSL_ROOT}src/crypto/poly1305/poly1305_test.cc
  ${BORINGSSL_ROOT}src/crypto/pool/pool_test.cc
  ${BORINGSSL_ROOT}src/crypto/rand_extra/rand_test.cc
  ${BORINGSSL_ROOT}src/crypto/refcount_test.cc
  ${BORINGSSL_ROOT}src/crypto/rsa_extra/rsa_test.cc
  ${BORINGSSL_ROOT}src/crypto/self_test.cc
  ${BORINGSSL_ROOT}src/crypto/siphash/siphash_test.cc
  ${BORINGSSL_ROOT}src/crypto/stack/stack_test.cc
  ${BORINGSSL_ROOT}src/crypto/test/abi_test.cc
  ${BORINGSSL_ROOT}src/crypto/test/file_test_gtest.cc
  ${BORINGSSL_ROOT}src/crypto/test/gtest_main.cc
  ${BORINGSSL_ROOT}src/crypto/thread_test.cc
  ${BORINGSSL_ROOT}src/crypto/trust_token/trust_token_test.cc
  ${BORINGSSL_ROOT}src/crypto/x509/x509_test.cc
  ${BORINGSSL_ROOT}src/crypto/x509/x509_time_test.cc
  ${BORINGSSL_ROOT}src/crypto/x509v3/tab_test.cc
)
set(ssl_test_sources
  ${BORINGSSL_ROOT}src/crypto/test/abi_test.cc
  ${BORINGSSL_ROOT}src/crypto/test/gtest_main.cc
  ${BORINGSSL_ROOT}src/ssl/span_test.cc
  ${BORINGSSL_ROOT}src/ssl/ssl_c_test.c
  ${BORINGSSL_ROOT}src/ssl/ssl_test.cc
)
set(crypto_sources_apple_aarch64
  ${BORINGSSL_ROOT}apple-aarch64/crypto/chacha/chacha-armv8.S
  ${BORINGSSL_ROOT}apple-aarch64/crypto/cipher_extra/chacha20_poly1305_armv8.S
  ${BORINGSSL_ROOT}apple-aarch64/crypto/fipsmodule/aesv8-armx64.S
  ${BORINGSSL_ROOT}apple-aarch64/crypto/fipsmodule/armv8-mont.S
  ${BORINGSSL_ROOT}apple-aarch64/crypto/fipsmodule/ghash-neon-armv8.S
  ${BORINGSSL_ROOT}apple-aarch64/crypto/fipsmodule/ghashv8-armx64.S
  ${BORINGSSL_ROOT}apple-aarch64/crypto/fipsmodule/p256-armv8-asm.S
  ${BORINGSSL_ROOT}apple-aarch64/crypto/fipsmodule/p256_beeu-armv8-asm.S
  ${BORINGSSL_ROOT}apple-aarch64/crypto/fipsmodule/sha1-armv8.S
  ${BORINGSSL_ROOT}apple-aarch64/crypto/fipsmodule/sha256-armv8.S
  ${BORINGSSL_ROOT}apple-aarch64/crypto/fipsmodule/sha512-armv8.S
  ${BORINGSSL_ROOT}apple-aarch64/crypto/fipsmodule/vpaes-armv8.S
  ${BORINGSSL_ROOT}apple-aarch64/crypto/test/trampoline-armv8.S
)
set(crypto_sources_apple_arm
  ${BORINGSSL_ROOT}apple-arm/crypto/chacha/chacha-armv4.S
  ${BORINGSSL_ROOT}apple-arm/crypto/fipsmodule/aesv8-armx32.S
  ${BORINGSSL_ROOT}apple-arm/crypto/fipsmodule/armv4-mont.S
  ${BORINGSSL_ROOT}apple-arm/crypto/fipsmodule/bsaes-armv7.S
  ${BORINGSSL_ROOT}apple-arm/crypto/fipsmodule/ghash-armv4.S
  ${BORINGSSL_ROOT}apple-arm/crypto/fipsmodule/ghashv8-armx32.S
  ${BORINGSSL_ROOT}apple-arm/crypto/fipsmodule/sha1-armv4-large.S
  ${BORINGSSL_ROOT}apple-arm/crypto/fipsmodule/sha256-armv4.S
  ${BORINGSSL_ROOT}apple-arm/crypto/fipsmodule/sha512-armv4.S
  ${BORINGSSL_ROOT}apple-arm/crypto/fipsmodule/vpaes-armv7.S
  ${BORINGSSL_ROOT}apple-arm/crypto/test/trampoline-armv4.S
)
set(crypto_sources_apple_x86
  ${BORINGSSL_ROOT}apple-x86/crypto/chacha/chacha-x86.S
  ${BORINGSSL_ROOT}apple-x86/crypto/fipsmodule/aesni-x86.S
  ${BORINGSSL_ROOT}apple-x86/crypto/fipsmodule/bn-586.S
  ${BORINGSSL_ROOT}apple-x86/crypto/fipsmodule/co-586.S
  ${BORINGSSL_ROOT}apple-x86/crypto/fipsmodule/ghash-ssse3-x86.S
  ${BORINGSSL_ROOT}apple-x86/crypto/fipsmodule/ghash-x86.S
  ${BORINGSSL_ROOT}apple-x86/crypto/fipsmodule/md5-586.S
  ${BORINGSSL_ROOT}apple-x86/crypto/fipsmodule/sha1-586.S
  ${BORINGSSL_ROOT}apple-x86/crypto/fipsmodule/sha256-586.S
  ${BORINGSSL_ROOT}apple-x86/crypto/fipsmodule/sha512-586.S
  ${BORINGSSL_ROOT}apple-x86/crypto/fipsmodule/vpaes-x86.S
  ${BORINGSSL_ROOT}apple-x86/crypto/fipsmodule/x86-mont.S
  ${BORINGSSL_ROOT}apple-x86/crypto/test/trampoline-x86.S
)
set(crypto_sources_apple_x86_64
  ${BORINGSSL_ROOT}apple-x86_64/crypto/chacha/chacha-x86_64.S
  ${BORINGSSL_ROOT}apple-x86_64/crypto/cipher_extra/aes128gcmsiv-x86_64.S
  ${BORINGSSL_ROOT}apple-x86_64/crypto/cipher_extra/chacha20_poly1305_x86_64.S
  ${BORINGSSL_ROOT}apple-x86_64/crypto/fipsmodule/aesni-gcm-x86_64.S
  ${BORINGSSL_ROOT}apple-x86_64/crypto/fipsmodule/aesni-x86_64.S
  ${BORINGSSL_ROOT}apple-x86_64/crypto/fipsmodule/ghash-ssse3-x86_64.S
  ${BORINGSSL_ROOT}apple-x86_64/crypto/fipsmodule/ghash-x86_64.S
  ${BORINGSSL_ROOT}apple-x86_64/crypto/fipsmodule/md5-x86_64.S
  ${BORINGSSL_ROOT}apple-x86_64/crypto/fipsmodule/p256-x86_64-asm.S
  ${BORINGSSL_ROOT}apple-x86_64/crypto/fipsmodule/p256_beeu-x86_64-asm.S
  ${BORINGSSL_ROOT}apple-x86_64/crypto/fipsmodule/rdrand-x86_64.S
  ${BORINGSSL_ROOT}apple-x86_64/crypto/fipsmodule/rsaz-avx2.S
  ${BORINGSSL_ROOT}apple-x86_64/crypto/fipsmodule/sha1-x86_64.S
  ${BORINGSSL_ROOT}apple-x86_64/crypto/fipsmodule/sha256-x86_64.S
  ${BORINGSSL_ROOT}apple-x86_64/crypto/fipsmodule/sha512-x86_64.S
  ${BORINGSSL_ROOT}apple-x86_64/crypto/fipsmodule/vpaes-x86_64.S
  ${BORINGSSL_ROOT}apple-x86_64/crypto/fipsmodule/x86_64-mont.S
  ${BORINGSSL_ROOT}apple-x86_64/crypto/fipsmodule/x86_64-mont5.S
  ${BORINGSSL_ROOT}apple-x86_64/crypto/test/trampoline-x86_64.S
)
set(crypto_sources_linux_aarch64
  ${BORINGSSL_ROOT}linux-aarch64/crypto/chacha/chacha-armv8.S
  ${BORINGSSL_ROOT}linux-aarch64/crypto/cipher_extra/chacha20_poly1305_armv8.S
  ${BORINGSSL_ROOT}linux-aarch64/crypto/fipsmodule/aesv8-armx64.S
  ${BORINGSSL_ROOT}linux-aarch64/crypto/fipsmodule/armv8-mont.S
  ${BORINGSSL_ROOT}linux-aarch64/crypto/fipsmodule/ghash-neon-armv8.S
  ${BORINGSSL_ROOT}linux-aarch64/crypto/fipsmodule/ghashv8-armx64.S
  ${BORINGSSL_ROOT}linux-aarch64/crypto/fipsmodule/p256-armv8-asm.S
  ${BORINGSSL_ROOT}linux-aarch64/crypto/fipsmodule/p256_beeu-armv8-asm.S
  ${BORINGSSL_ROOT}linux-aarch64/crypto/fipsmodule/sha1-armv8.S
  ${BORINGSSL_ROOT}linux-aarch64/crypto/fipsmodule/sha256-armv8.S
  ${BORINGSSL_ROOT}linux-aarch64/crypto/fipsmodule/sha512-armv8.S
  ${BORINGSSL_ROOT}linux-aarch64/crypto/fipsmodule/vpaes-armv8.S
  ${BORINGSSL_ROOT}linux-aarch64/crypto/test/trampoline-armv8.S
)
set(crypto_sources_linux_arm
  ${BORINGSSL_ROOT}linux-arm/crypto/chacha/chacha-armv4.S
  ${BORINGSSL_ROOT}linux-arm/crypto/fipsmodule/aesv8-armx32.S
  ${BORINGSSL_ROOT}linux-arm/crypto/fipsmodule/armv4-mont.S
  ${BORINGSSL_ROOT}linux-arm/crypto/fipsmodule/bsaes-armv7.S
  ${BORINGSSL_ROOT}linux-arm/crypto/fipsmodule/ghash-armv4.S
  ${BORINGSSL_ROOT}linux-arm/crypto/fipsmodule/ghashv8-armx32.S
  ${BORINGSSL_ROOT}linux-arm/crypto/fipsmodule/sha1-armv4-large.S
  ${BORINGSSL_ROOT}linux-arm/crypto/fipsmodule/sha256-armv4.S
  ${BORINGSSL_ROOT}linux-arm/crypto/fipsmodule/sha512-armv4.S
  ${BORINGSSL_ROOT}linux-arm/crypto/fipsmodule/vpaes-armv7.S
  ${BORINGSSL_ROOT}linux-arm/crypto/test/trampoline-armv4.S
  ${BORINGSSL_ROOT}src/crypto/curve25519/asm/x25519-asm-arm.S
  ${BORINGSSL_ROOT}src/crypto/poly1305/poly1305_arm_asm.S
)
set(crypto_sources_linux_ppc64le
  ${BORINGSSL_ROOT}linux-ppc64le/crypto/fipsmodule/aesp8-ppc.S
  ${BORINGSSL_ROOT}linux-ppc64le/crypto/fipsmodule/ghashp8-ppc.S
  ${BORINGSSL_ROOT}linux-ppc64le/crypto/test/trampoline-ppc.S
)
set(crypto_sources_linux_x86
  ${BORINGSSL_ROOT}linux-x86/crypto/chacha/chacha-x86.S
  ${BORINGSSL_ROOT}linux-x86/crypto/fipsmodule/aesni-x86.S
  ${BORINGSSL_ROOT}linux-x86/crypto/fipsmodule/bn-586.S
  ${BORINGSSL_ROOT}linux-x86/crypto/fipsmodule/co-586.S
  ${BORINGSSL_ROOT}linux-x86/crypto/fipsmodule/ghash-ssse3-x86.S
  ${BORINGSSL_ROOT}linux-x86/crypto/fipsmodule/ghash-x86.S
  ${BORINGSSL_ROOT}linux-x86/crypto/fipsmodule/md5-586.S
  ${BORINGSSL_ROOT}linux-x86/crypto/fipsmodule/sha1-586.S
  ${BORINGSSL_ROOT}linux-x86/crypto/fipsmodule/sha256-586.S
  ${BORINGSSL_ROOT}linux-x86/crypto/fipsmodule/sha512-586.S
  ${BORINGSSL_ROOT}linux-x86/crypto/fipsmodule/vpaes-x86.S
  ${BORINGSSL_ROOT}linux-x86/crypto/fipsmodule/x86-mont.S
  ${BORINGSSL_ROOT}linux-x86/crypto/test/trampoline-x86.S
)
set(crypto_sources_linux_x86_64
  ${BORINGSSL_ROOT}linux-x86_64/crypto/chacha/chacha-x86_64.S
  ${BORINGSSL_ROOT}linux-x86_64/crypto/cipher_extra/aes128gcmsiv-x86_64.S
  ${BORINGSSL_ROOT}linux-x86_64/crypto/cipher_extra/chacha20_poly1305_x86_64.S
  ${BORINGSSL_ROOT}linux-x86_64/crypto/fipsmodule/aesni-gcm-x86_64.S
  ${BORINGSSL_ROOT}linux-x86_64/crypto/fipsmodule/aesni-x86_64.S
  ${BORINGSSL_ROOT}linux-x86_64/crypto/fipsmodule/ghash-ssse3-x86_64.S
  ${BORINGSSL_ROOT}linux-x86_64/crypto/fipsmodule/ghash-x86_64.S
  ${BORINGSSL_ROOT}linux-x86_64/crypto/fipsmodule/md5-x86_64.S
  ${BORINGSSL_ROOT}linux-x86_64/crypto/fipsmodule/p256-x86_64-asm.S
  ${BORINGSSL_ROOT}linux-x86_64/crypto/fipsmodule/p256_beeu-x86_64-asm.S
  ${BORINGSSL_ROOT}linux-x86_64/crypto/fipsmodule/rdrand-x86_64.S
  ${BORINGSSL_ROOT}linux-x86_64/crypto/fipsmodule/rsaz-avx2.S
  ${BORINGSSL_ROOT}linux-x86_64/crypto/fipsmodule/sha1-x86_64.S
  ${BORINGSSL_ROOT}linux-x86_64/crypto/fipsmodule/sha256-x86_64.S
  ${BORINGSSL_ROOT}linux-x86_64/crypto/fipsmodule/sha512-x86_64.S
  ${BORINGSSL_ROOT}linux-x86_64/crypto/fipsmodule/vpaes-x86_64.S
  ${BORINGSSL_ROOT}linux-x86_64/crypto/fipsmodule/x86_64-mont.S
  ${BORINGSSL_ROOT}linux-x86_64/crypto/fipsmodule/x86_64-mont5.S
  ${BORINGSSL_ROOT}linux-x86_64/crypto/test/trampoline-x86_64.S
  ${BORINGSSL_ROOT}src/crypto/hrss/asm/poly_rq_mul.S
)
set(crypto_sources_win_aarch64
  ${BORINGSSL_ROOT}win-aarch64/crypto/chacha/chacha-armv8.S
  ${BORINGSSL_ROOT}win-aarch64/crypto/cipher_extra/chacha20_poly1305_armv8.S
  ${BORINGSSL_ROOT}win-aarch64/crypto/fipsmodule/aesv8-armx64.S
  ${BORINGSSL_ROOT}win-aarch64/crypto/fipsmodule/armv8-mont.S
  ${BORINGSSL_ROOT}win-aarch64/crypto/fipsmodule/ghash-neon-armv8.S
  ${BORINGSSL_ROOT}win-aarch64/crypto/fipsmodule/ghashv8-armx64.S
  ${BORINGSSL_ROOT}win-aarch64/crypto/fipsmodule/p256-armv8-asm.S
  ${BORINGSSL_ROOT}win-aarch64/crypto/fipsmodule/p256_beeu-armv8-asm.S
  ${BORINGSSL_ROOT}win-aarch64/crypto/fipsmodule/sha1-armv8.S
  ${BORINGSSL_ROOT}win-aarch64/crypto/fipsmodule/sha256-armv8.S
  ${BORINGSSL_ROOT}win-aarch64/crypto/fipsmodule/sha512-armv8.S
  ${BORINGSSL_ROOT}win-aarch64/crypto/fipsmodule/vpaes-armv8.S
  ${BORINGSSL_ROOT}win-aarch64/crypto/test/trampoline-armv8.S
)
set(crypto_sources_win_x86
  ${BORINGSSL_ROOT}win-x86/crypto/chacha/chacha-x86.asm
  ${BORINGSSL_ROOT}win-x86/crypto/fipsmodule/aesni-x86.asm
  ${BORINGSSL_ROOT}win-x86/crypto/fipsmodule/bn-586.asm
  ${BORINGSSL_ROOT}win-x86/crypto/fipsmodule/co-586.asm
  ${BORINGSSL_ROOT}win-x86/crypto/fipsmodule/ghash-ssse3-x86.asm
  ${BORINGSSL_ROOT}win-x86/crypto/fipsmodule/ghash-x86.asm
  ${BORINGSSL_ROOT}win-x86/crypto/fipsmodule/md5-586.asm
  ${BORINGSSL_ROOT}win-x86/crypto/fipsmodule/sha1-586.asm
  ${BORINGSSL_ROOT}win-x86/crypto/fipsmodule/sha256-586.asm
  ${BORINGSSL_ROOT}win-x86/crypto/fipsmodule/sha512-586.asm
  ${BORINGSSL_ROOT}win-x86/crypto/fipsmodule/vpaes-x86.asm
  ${BORINGSSL_ROOT}win-x86/crypto/fipsmodule/x86-mont.asm
  ${BORINGSSL_ROOT}win-x86/crypto/test/trampoline-x86.asm
)
set(crypto_sources_win_x86_64
  ${BORINGSSL_ROOT}win-x86_64/crypto/chacha/chacha-x86_64.asm
  ${BORINGSSL_ROOT}win-x86_64/crypto/cipher_extra/aes128gcmsiv-x86_64.asm
  ${BORINGSSL_ROOT}win-x86_64/crypto/cipher_extra/chacha20_poly1305_x86_64.asm
  ${BORINGSSL_ROOT}win-x86_64/crypto/fipsmodule/aesni-gcm-x86_64.asm
  ${BORINGSSL_ROOT}win-x86_64/crypto/fipsmodule/aesni-x86_64.asm
  ${BORINGSSL_ROOT}win-x86_64/crypto/fipsmodule/ghash-ssse3-x86_64.asm
  ${BORINGSSL_ROOT}win-x86_64/crypto/fipsmodule/ghash-x86_64.asm
  ${BORINGSSL_ROOT}win-x86_64/crypto/fipsmodule/md5-x86_64.asm
  ${BORINGSSL_ROOT}win-x86_64/crypto/fipsmodule/p256-x86_64-asm.asm
  ${BORINGSSL_ROOT}win-x86_64/crypto/fipsmodule/p256_beeu-x86_64-asm.asm
  ${BORINGSSL_ROOT}win-x86_64/crypto/fipsmodule/rdrand-x86_64.asm
  ${BORINGSSL_ROOT}win-x86_64/crypto/fipsmodule/rsaz-avx2.asm
  ${BORINGSSL_ROOT}win-x86_64/crypto/fipsmodule/sha1-x86_64.asm
  ${BORINGSSL_ROOT}win-x86_64/crypto/fipsmodule/sha256-x86_64.asm
  ${BORINGSSL_ROOT}win-x86_64/crypto/fipsmodule/sha512-x86_64.asm
  ${BORINGSSL_ROOT}win-x86_64/crypto/fipsmodule/vpaes-x86_64.asm
  ${BORINGSSL_ROOT}win-x86_64/crypto/fipsmodule/x86_64-mont.asm
  ${BORINGSSL_ROOT}win-x86_64/crypto/fipsmodule/x86_64-mont5.asm
  ${BORINGSSL_ROOT}win-x86_64/crypto/test/trampoline-x86_64.asm
)
