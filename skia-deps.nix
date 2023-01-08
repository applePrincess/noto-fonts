{ fetchgit }:
{
  "buildtools" = fetchgit {
    "url" = "https://chromium.googlesource.com/chromium/src/buildtools.git";
    "rev" = "b138e6ce86ae843c42a1a08f37903207bebcca75";
    "sha256" = "0jl0la5a3jisfr5kgs9a3pwk8mp15pjw9lmb666pyawa6ar3d3dw";
  };
  "third_party/externals/angle2" = fetchgit {
    "url" = "https://chromium.googlesource.com/angle/angle.git";
    "rev" = "1d2b20f535327fc707716c861184c83c6160bcaf";
    "sha256" = "1xm8qh80rw1p4c3s6zb20dgw7p86k47n25jhn0yc2h1clg4fdnk3";
  };
  "third_party/externals/brotli" = fetchgit {
    "url" = "https://skia.googlesource.com/external/github.com/google/brotli.git";
    "rev" = "6d03dfbedda1615c4cba1211f8d81735575209c8";
    "sha256" = "0l1wk83y471766n0snqv4i7h9fvqj92rbi63n0y2wqfdix0w8wf2";
  };
  "third_party/externals/d3d12allocator" = fetchgit {
    "url" = "https://skia.googlesource.com/external/github.com/GPUOpen-LibrariesAndSDKs/D3D12MemoryAllocator.git";
    "rev" = "169895d529dfce00390a20e69c2f516066fe7a3b";
    "sha256" = "1r7m8lf0nnzmpkciz5yd1b8l5g9rb75yqpvklh0y7lfvfbzx2dp4";
  };
  "third_party/externals/dawn" = fetchgit {
    "url" = "https://dawn.googlesource.com/dawn.git";
    "rev" = "582ce0b0b4c828f7a8c158a45a24a28662cfa0e4";
    "sha256" = "1k8gr2kqbmri4i0hzm4fiq5cirrdvq73n3wz6i0gdvjg07dvrrs9";
  };
  "third_party/externals/jinja2" = fetchgit {
    "url" = "https://chromium.googlesource.com/chromium/src/third_party/jinja2";
    "rev" = "ee69aa00ee8536f61db6a451f3858745cf587de6";
    "sha256" = "1fsnd5h0gisfp8bdsfd81kk5v4mkqf8z368c7qlm1qcwc4ri4x7a";
  };
  "third_party/externals/markupsafe" = fetchgit {
    "url" = "https://chromium.googlesource.com/chromium/src/third_party/markupsafe";
    "rev" = "0944e71f4b2cb9a871bcbe353f95e889b64a611a";
    "sha256" = "052ij8i7nkqchbvzv6ykj929hvfxjbzq7az2l01r0l2gfazhvdb9";
  };
  "third_party/externals/abseil-cpp" = fetchgit {
    "url" = "https://skia.googlesource.com/external/github.com/abseil/abseil-cpp.git";
    "rev" = "cb436cf0142b4cbe47aae94223443df7f82e2920";
    "sha256" = "0bcspnha5jjhjknsh0m0711w4zzy26zn60s61bkqyyczza5xwiwz";
  };
  "third_party/externals/dng_sdk" = fetchgit {
    "url" = "https://android.googlesource.com/platform/external/dng_sdk.git";
    "rev" = "c8d0c9b1d16bfda56f15165d39e0ffa360a11123";
    "sha256" = "1nlq082aij7q197i5646bi4vd2il7fww6sdwhqisv2cs842nyfwm";
  };
  "third_party/externals/egl-registry" = fetchgit {
    "url" = "https://skia.googlesource.com/external/github.com/KhronosGroup/EGL-Registry";
    "rev" = "a0bca08de07c7d7651047bedc0b653cfaaa4f2ae";
    "sha256" = "020npk4jc047pvnbvaqlc356f2vn3dzl8g31gzjk2nd6ng3wmscw";
  };
  "third_party/externals/emsdk" = fetchgit {
    "url" = "https://skia.googlesource.com/external/github.com/emscripten-core/emsdk.git";
    "rev" = "4a48a752e6a8bef6f222622f2b4926d5eb3bdeb3";
    "sha256" = "12a7lkbfclblq8plhm32jdg1v8vb5dj4n1pmvz791l4chyb5wbki";
  };
  "third_party/externals/expat" = fetchgit {
    "url" = "https://chromium.googlesource.com/external/github.com/libexpat/libexpat.git";
    "rev" = "441f98d02deafd9b090aea568282b28f66a50e36";
    "sha256" = "14k4by1afkcn5r3zyjqqjllm3hdnm898bcznq8v3gpml08cc6x0m";
  };
  "third_party/externals/freetype" = fetchgit {
    "url" = "https://chromium.googlesource.com/chromium/src/third_party/freetype2.git";
    "rev" = "ebe7e9128cdf81cb0a0d27fe293ecff96f6c98a8";
    "sha256" = "07x531mrzc4dc3iwxkfqx5767s1fkgg9ag29zjpy8hsc685mkwiy";
  };
  "third_party/externals/harfbuzz" = fetchgit {
    "url" = "https://chromium.googlesource.com/external/github.com/harfbuzz/harfbuzz.git";
    "rev" = "f1f2be776bcd994fa9262622e1a7098a066e5cf7";
    "sha256" = "1hnfqnrfb5mzcjvaky82jxbcna4yxkasl62mdzqdgg1md1r95a1b";
  };
  "third_party/externals/highway" = fetchgit {
    "url" = "https://chromium.googlesource.com/external/github.com/google/highway.git";
    "rev" = "424360251cdcfc314cfc528f53c872ecd63af0f0";
    "sha256" = "0w5y8qwnvqq78pgc11bg4a4ilraymv57b95pljf1cqxwd17wkp1y";
  };
  "third_party/externals/icu" = fetchgit {
    "url" = "https://chromium.googlesource.com/chromium/deps/icu.git";
    "rev" = "a0718d4f121727e30b8d52c7a189ebf5ab52421f";
    "sha256" = "1qxws2p91f6dmhy7d3967r5ygz06r88pkmpm97px067x0zzdz384";
  };
  "third_party/externals/imgui" = fetchgit {
    "url" = "https://skia.googlesource.com/external/github.com/ocornut/imgui.git";
    "rev" = "55d35d8387c15bf0cfd71861df67af8cfbda7456";
    "sha256" = "1095zw0mvw24bnxya3fhiw4r393pzxvj99qimaj7hzz6rfb0c2qx";
  };
  "third_party/externals/libavif" = fetchgit {
    "url" = "https://github.com/AOMediaCodec/libavif.git";
    "rev" = "f49462dc93784bf34148715eee36ab6697ca0b35";
    "sha256" = "1w9d9yy237ifcfa4sjf3faxm2irgvhgmqddvnimq2bf6da4xsar0";
  };
  "third_party/externals/libgav1" = fetchgit {
    "url" = "https://chromium.googlesource.com/codecs/libgav1.git";
    "rev" = "0fb779c1e169fe6c229cd1fa9cc6ea6feeb441da";
    "sha256" = "0jfcxbwh04dspql0jjpdd536ip5974xp078jzjsdpc8spb7zv7mn";
  };
  "third_party/externals/libjpeg-turbo" = fetchgit {
    "url" = "https://chromium.googlesource.com/chromium/deps/libjpeg_turbo.git";
    "rev" = "ed683925e4897a84b3bffc5c1414c85b97a129a3";
    "sha256" = "0p0120dkqgb8b578kf0c3xcx717c6k3s8xhknp1frq2yk3g4z0hd";
  };
  "third_party/externals/libjxl" = fetchgit {
    "url" = "https://chromium.googlesource.com/external/gitlab.com/wg1/jpeg-xl.git";
    "rev" = "a205468bc5d3a353fb15dae2398a101dff52f2d3";
    "sha256" = "0qx1sfc30fv8ykvx99h9ag59x36jbzh770fma2fzrc397v615n79";
  };
  "third_party/externals/libpng" = fetchgit {
    "url" = "https://skia.googlesource.com/third_party/libpng.git";
    "rev" = "386707c6d19b974ca2e3db7f5c61873813c6fe44";
    "sha256" = "1rs33vhj6h2vlskgd6wnl2jv379g9bs5z7xks5i1173cq3j1zfgb";
  };
  "third_party/externals/libwebp" = fetchgit {
    "url" = "https://chromium.googlesource.com/webm/libwebp.git";
    "rev" = "a8e366166ab57bb1b4aaf6739fc775515bc71b51";
    "sha256" = "1p0xq6y75h16ad5pqkmzwbkqskzaqbjrwbvswskdiimlxmg50ixq";
  };
  "third_party/externals/libyuv" = fetchgit {
    "url" = "https://chromium.googlesource.com/libyuv/libyuv.git";
    "rev" = "d248929c059ff7629a85333699717d7a677d8d96";
    "sha256" = "00056lkqywmp0y3ifqkcii1vm2siigdpinhw52hgnynp43zq9xf6";
  };
  "third_party/externals/microhttpd" = fetchgit {
    "url" = "https://android.googlesource.com/platform/external/libmicrohttpd";
    "rev" = "748945ec6f1c67b7efc934ab0808e1d32f2fb98d";
    "sha256" = "0y2wxkngr5y97lighzyilir3m2qzkas4kcrg7ivlw3f31z1zhxlk";
  };
  "third_party/externals/oboe" = fetchgit {
    "url" = "https://chromium.googlesource.com/external/github.com/google/oboe.git";
    "rev" = "b02a12d1dd821118763debec6b83d00a8a0ee419";
    "sha256" = "0k6kpgfi8zvghfihs2ysngk6zx2g7cbkjpvjfx94dkhf12gpbnpd";
  };
  "third_party/externals/opengl-registry" = fetchgit {
    "url" = "https://skia.googlesource.com/external/github.com/KhronosGroup/OpenGL-Registry";
    "rev" = "14b80ebeab022b2c78f84a573f01028c96075553";
    "sha256" = "0zkyw99wkl1svibadm88sxl0iddqscfp64bnwaq8m4wj1yspfsk2";
  };
  "third_party/externals/perfetto" = fetchgit {
    "url" = "https://android.googlesource.com/platform/external/perfetto";
    "rev" = "93885509be1c9240bc55fa515ceb34811e54a394";
    "sha256" = "1rkcmzjgicx2742jgkx94c1nahhlr39d338nzfr3459skq86pxaf";
  };
  "third_party/externals/piet-gpu" = fetchgit {
    "url" = "https://skia.googlesource.com/external/github.com/linebender/piet-gpu.git";
    "rev" = "947a85f9cfb97f946b9bbd32ca9c2c1e5246b482";
    "sha256" = "1xlrhihpkylism1sfs70hrp9wjp1gwwsryk1z8wcc07831wn1mhc";
  };
  "third_party/externals/piex" = fetchgit {
    "url" = "https://android.googlesource.com/platform/external/piex.git";
    "rev" = "bb217acdca1cc0c16b704669dd6f91a1b509c406";
    "sha256" = "05ipmag6k55jmidbyvg5mkqm69zfw03gfkqhi9jnjlmlbg31y412";
  };
  "third_party/externals/sfntly" = fetchgit {
    "url" = "https://chromium.googlesource.com/external/github.com/googlei18n/sfntly.git";
    "rev" = "b55ff303ea2f9e26702b514cf6a3196a2e3e2974";
    "sha256" = "1qi5rfzmwfrji46x95g6dsb03i1v26700kifl2hpgm3pqhr7afpz";
  };
  "third_party/externals/swiftshader" = fetchgit {
    "url" = "https://swiftshader.googlesource.com/SwiftShader";
    "rev" = "5f9ed9b16931c7155171d31f75004f73f0a3abc8";
    "sha256" = "1k4mcfgvvgd8v7qwa70gnjhnwif6vgz777anddhxfi0n02aq9pv3";
  };
  "third_party/externals/vulkanmemoryallocator" = fetchgit {
    "url" = "https://chromium.googlesource.com/external/github.com/GPUOpen-LibrariesAndSDKs/VulkanMemoryAllocator";
    "rev" = "7de5cc00de50e71a3aab22dea52fbb7ff4efceb6";
    "sha256" = "14ja4n50ypv98w0llixv4dfd1wn3lkr1wygy9cqb82kv4r2zc6mg";
  };
  "third_party/externals/vulkan-deps" = fetchgit {
    "url" = "https://chromium.googlesource.com/vulkan-deps";
    "rev" = "e7c0454c0991d1353f1c4a023cf768d6bdddb739";
    "sha256" = "0swi9087dqr15k18hprg9s0sji7c2vzs03s28gkjpdl3dalc053c";
  };
  "third_party/externals/spirv-cross" = fetchgit {
    "url" = "https://chromium.googlesource.com/external/github.com/KhronosGroup/SPIRV-Cross";
    "rev" = "0bb28ef88ad0de12dde25b121430e1f2fc0adc33";
    "sha256" = "0lx9l3bkwqn1pjir1n0j5k4j10qypxk5fwzbqjr3rv7ns5b5pvhm";
  };
  "third_party/externals/spirv-headers" = fetchgit {
    "url" = "https://skia.googlesource.com/external/github.com/KhronosGroup/SPIRV-Headers.git";
    "rev" = "d13b52222c39a7e9a401b44646f0ca3a640fbd47";
    "sha256" = "1f21x0ddrwbl55qq41mks2yw3wv5s73kz2yhbsfvq4d954crcf3f";
  };
  "third_party/externals/spirv-tools" = fetchgit {
    "url" = "https://skia.googlesource.com/external/github.com/KhronosGroup/SPIRV-Tools.git";
    "rev" = "d87f61605b3647fbceae9aaa922fce0031afdc63";
    "sha256" = "1syikdlq83xc6mpixcajf9rg6z6bq95ksj07751q316y13ms47cl";
  };
  "third_party/externals/vulkan-headers" = fetchgit {
    "url" = "https://chromium.googlesource.com/external/github.com/KhronosGroup/Vulkan-Headers";
    "rev" = "18963a6cc03fe15e3785d353dea6a1ff95115a5e";
    "sha256" = "00smrwgysrbjwcdls4g38rwbzwlx6faznlwam2pdxf92nc4vk4vr";
  };
  "third_party/externals/vulkan-tools" = fetchgit {
    "url" = "https://chromium.googlesource.com/external/github.com/KhronosGroup/Vulkan-Tools";
    "rev" = "7b798e3e47824c94ffc6c8e75b0440bb78d2b7e2";
    "sha256" = "0h23qyjbd676qs0dm0q4y22s1j5g3ski5kv624qc8njz7ym62zq8";
  };
  "third_party/externals/wuffs" = fetchgit {
    "url" = "https://skia.googlesource.com/external/github.com/google/wuffs-mirror-release-c.git";
    "rev" = "a0041ac0310b3156b963e2f2bea09245f25ec073";
    "sha256" = "0v27gcx3mj1ny91g87hx5am8m6wn5696n3842zfv7plqnap4rd51";
  };
  "third_party/externals/zlib" = fetchgit {
    "url" = "https://chromium.googlesource.com/chromium/src/third_party/zlib";
    "rev" = "c876c8f87101c5a75f6014b0f832499afeb65b73";
    "sha256" = "0ha658sgxnhna27hwrck0jib33s8czvgnw4b6zc2m6rjixb362lv";
  };
}
