# Changelog

## [0.4.43] - 2024-04-10

[3605972e](3605972ee3b0e9b5d6b604179b3fde0222158261)...[50ab88bc](50ab88bc8849cff41df32bcb0c76106a3f3d1565)

### <!-- 0 -->Features

- *(bin)* Add multiple bins ([940d4204](940d4204762e39428c3731b8a2f13f23ea02863f))

## [0.4.19] - 2024-04-09

[3ac8db78](3ac8db7872de34552f662aa30a0fd948424dd9b7)...[f3324ed3](f3324ed36a48b49aed4e3dd60c586e0a1f58206d)

### <!-- 0 -->Features

- *(main)* Add hello with crossterm (#65) ([dbe83e0c](dbe83e0c88fe01c61668702064429d74ba671c96))

## [0.4.15] - 2024-04-08

[90bbac2c](90bbac2c9f84eee01e51022296084cf9413ab944)...[2ca2d16b](2ca2d16b5c3f794e3c6fb9d4947aa6cc95de22ed)

### <!-- 0 -->Features

- *(build)* Add linux/windows build for aarch64 PC (#55) ([b3b3f9f3](b3b3f9f3dfdd76bb6729d613667328e872e903f7))
- *(build)* Add build nightly (#57) ([d0761af7](d0761af79aa5f640f4a470dfad9e6d761484942c))

### <!-- 1 -->Bug Fixes

- *(build)* Remove tag option ([6fcd1cd1](6fcd1cd1a55ae30d20f3d2bb1c55e4800d861c75))

## [0.4.14] - 2024-04-08

[717f9789](717f9789bce7659ad58d6a7ac89a7525a523899d)...[90bbac2c](90bbac2c9f84eee01e51022296084cf9413ab944)

### <!-- 1 -->Bug Fixes

- *(build)* Fix assets upload (#53) ([59b34752](59b34752616cf5faf917b0152d0c5c1d29ef87a4))

## [0.4.11] - 2024-04-08

[3a378067](3a3780675ce6c94cea07959694320c52d9073757)...[af2cf666](af2cf666c53fd146cfcabae6153e808e904491f0)

### <!-- 2 -->Performance Improvements

- *(deps)* Check dependabot daily ([07d57c23](07d57c232ad66d83c6c1eb6c470e6ba395d7444c))

## [0.4.10] - 2024-04-07

[31961af1](31961af1eb559c5ddbc99bac81db7e921dc8b660)...[3a378067](3a3780675ce6c94cea07959694320c52d9073757)

### <!-- 0 -->Features

- *(deps)* Add cargo-dependabot-test ([614843b1](614843b1db0a5f2e4c68dd31320fd279156b8123))

## [0.4.7] - 2024-04-07

[22d022d0](22d022d0887b2d1eeca72a4db3ac923eb20ac994)...[96f41382](96f413820bf05673d93a3b3a82019fea27ad7a61)

### <!-- 0 -->Features

- Use cargo-dist to build assets (#40) ([bb1eae36](bb1eae368dd9d66854e3ad45c61879f3f0cac11c))

## [0.4.6] - 2024-04-07

[e4bea7e1](e4bea7e1167b6afd2b39cfa13724fb8ae9293e95)...[22d022d0](22d022d0887b2d1eeca72a4db3ac923eb20ac994)

### <!-- 0 -->Features

- Use git-cliff for release-preview (#34) ([2dbb0bcf](2dbb0bcf6578f54c02fcb0f30e2e645caf3337c1))

### <!-- 1 -->Bug Fixes

- *(release)* Remove 'allowUpdates' ([d8bd42c6](d8bd42c6355402fa5133dbc9983a9bc06fd7b661))
- Fix empty changelog in git-cliff (#35) ([b9706112](b970611295025bede63e3480304d983efc76d41d)), feat:try trigger conventional commits in commit message body/footer (#35)
- *(git-cliff)* Fix template body (#36) ([cbbf2587](cbbf25876d8c2852eeac8dd4cba86a72f07f9448))

## [0.4.5] - 2024-04-07

[a12a4df4](a12a4df4be481730c890447831e6fd564d76b096)...[e4bea7e1](e4bea7e1167b6afd2b39cfa13724fb8ae9293e95)

### <!-- 1 -->Bug Fixes

- *(release-please)* Debug 'release_created' (#32) ([8c2e221e](8c2e221efa1cde5cbd7801f361022efc1a40d1f5))
- *(release-please)* Set 'skip-github-release' to true ([b9ef29e5](b9ef29e58e277b2d51b9bf2df9547ece1383a016))
- *(release)* Try allow updates ([9b42455a](9b42455a2b167923a0df5d44756a63df5020c4bf))

## [0.4.4] - 2024-04-07

[8bc084c5](8bc084c56d94efed245170a72f2227bbb5763c1f)...[a12a4df4](a12a4df4be481730c890447831e6fd564d76b096)

### <!-- 0 -->Features

- *(release)* Add cargo-dist (#30) ([554531cd](554531cd705defa00f6a2c39a818902acf592bcf))

## [0.4.3] - 2024-04-06

[d5bdeec0](d5bdeec09ff9f15dedcd43143c4d346909ab8061)...[8bc084c5](8bc084c56d94efed245170a72f2227bbb5763c1f)

### <!-- 1 -->Bug Fixes

- *(release)* Remove wrong category ([94e87747](94e87747b55f78624d528e6616cc972630b71541))

## [0.4.2] - 2024-04-06

[2672d3d3](2672d3d3ffec3b2f13e4a610be11a5050ea81324)...[d5bdeec0](d5bdeec09ff9f15dedcd43143c4d346909ab8061)

### <!-- 0 -->Features

- *(build)* Check build before release (#24) ([9b7c91f0](9b7c91f0c0992a47f8c54530616540d51bcdb4b0))
- *(release)* Verify cargo publish before release (#26) ([2c07e64f](2c07e64f4e3398aa2c9bdc3b65cc9398ef2d3d72))
- *(release)* Publish cargo after release (#27) ([2caf40c9](2caf40c964216695d6c960771a020e4cfc146f76))

## [0.4.1] - 2024-04-06

[3efd42ae](3efd42aebb28849d2d6e94e713eeb3f60c53686c)...[2672d3d3](2672d3d3ffec3b2f13e4a610be11a5050ea81324)

### <!-- 0 -->Features

- Extend changelog types (#20) ([47e26a7d](47e26a7d36bff215c756b51c9297c50c340a3572))
- *(release)* Force upper case for first letter (#23) ([fc6d39bf](fc6d39bf5b051c3e0df5104723d622a23a143d04))

### <!-- 1 -->Bug Fixes

- *(release)* Fix changelog sections (#22) ([ddb42f76](ddb42f76296700b3359654e54773400cd30cf1af))

## [0.4.0] - 2024-04-06

[6a8f527f](6a8f527fd2738f500e624e674fe7e1ecaae85a99)...[3efd42ae](3efd42aebb28849d2d6e94e713eeb3f60c53686c)

### <!-- 1 -->Bug Fixes

- *(release)* Remove node/cargo workspace ([5ed07d8b](5ed07d8b52f137b30e534fc6edd89baee0911521))
- *(release)* Remove component in tags ([78688a2b](78688a2b4960a1434b6884e8f96ecddb828c28c6))

## [cargo-ci-template-v0.3.0] - 2024-04-06

[040fbeb0](040fbeb0a5c363fffa2464fe5ebb9148fba95f41)...[6a8f527f](6a8f527fd2738f500e624e674fe7e1ecaae85a99)

### <!-- 0 -->Features

- Bump minor for feat, patch for fix ([2758af47](2758af47f2580263b7e49c858d70878189b9dbd2))

### <!-- 1 -->Bug Fixes

- Add .release-please-manifest.json ([ebdd3c14](ebdd3c14c5e0d7a074e0adb6cc3eea594d4206ca))

## [0.2.4] - 2024-04-06

[adec3e5d](adec3e5defd70da58f738fe44643c06416de2950)...[d1c8e2bc](d1c8e2bc12f94eb7e263af8f68854d9417b86dd7)

### <!-- 1 -->Bug Fixes

- Fix commit id link (#9) ([3152db88](3152db8814b78ea0a384ec670cb99d56b60d57e4))
- Remove postprocessing ([861f9c5f](861f9c5f49b81ab06a9574bb043ff550f178e9c7))

## [0.2.3] - 2024-04-06

[61adeaf5](61adeaf5ad6c414a663ff3bbd2160366eb02125e)...[adec3e5d](adec3e5defd70da58f738fe44643c06416de2950)

### <!-- 0 -->Features

- *(release-plz)* Add commit id, author name, pr number ([eabcef04](eabcef04f600bea6176715b02f5514ed1b8d151f))

## [0.2.2] - 2024-04-06

[bc4156a4](bc4156a454540418d17e73a8daf68a7bdad263d6)...[61adeaf5](61adeaf5ad6c414a663ff3bbd2160366eb02125e)

### <!-- 0 -->Features

- Config remote.github for git-cliff ([bf51dcc2](bf51dcc29fbfcc5fd732df1c4a497ce78fab0b9c))

### <!-- 1 -->Bug Fixes

- Remove token in git-cliff (#6) ([4c1ea0de](4c1ea0de2d0c2a3b6e16ede3d10c4821c060a785))
- Use release-plz config (#7) ([e5a2bedf](e5a2bedf42a4ac74ab32464ea23e12b540f4e3d6))
- *(release-plz)* Remove footer ([d9a2b399](d9a2b399882bbc3555db91355e508c8556f8f9a5))
- *(release-plz)* Add line break to header ([d676e45b](d676e45b96bbedc7e0abd80051dcfce3570af73f))

## [0.2.1] - 2024-04-05

[acdc34c8](acdc34c871ab36b776202ba066ec985dc12211c3)...[bc4156a4](bc4156a454540418d17e73a8daf68a7bdad263d6)

### <!-- 1 -->Bug Fixes

- Show commit author only when exist (#4) ([abd7a376](abd7a3767a6fa9d912360ec1ccd867cb2e4112fa))

## [0.2.0] - 2024-04-05

[05a3acc6](05a3acc61140b53d1e65da5ab78d44e3245d00b4)...[acdc34c8](acdc34c871ab36b776202ba066ec985dc12211c3)

### <!-- 0 -->Features

- Add git-cliff config ([38029f61](38029f61d99e768c8b49331540101e9992fd939f))
- Add git-cliff config ([68ece2bf](68ece2bf7d6fb8638019e941dcc301d963d4d30b))
- Improve changelog style ([e032920f](e032920fbcd410dc1ff1d547acb9ca1dfe0f56dd))
- Use github style release notes ([f876caca](f876caca8ff9029b980d16b2b1c6a0584781bf55))
- Add cargo-release.yml ([6f360aaa](6f360aaa8ba08f7e1818039904c135f74e848e2b))
- Use cocogitto git-cliff.toml ([810c4f7d](810c4f7d62e25e7cb7384c73fd03017fe9b27d6d))

### <!-- 1 -->Bug Fixes

- Fix workspace in release-plz.toml ([4db4f9f7](4db4f9f7a4ae9a8661b828c37f20d39111a7c22b))
- Remove first contributors ([27b52e9c](27b52e9cf806c9439ce89e778672b2f069ac91ea))
- *(git-cliff)* Fix commit author name ([868395bf](868395bfd63f02f7e2361a8782f61dad383be2d7))
- *(git-cliff)* Try fix author name ([cc64ecb3](cc64ecb35a5d9cfc573907906cf55787fb649dee))

## [0.1.0] - 2024-04-05

### <!-- 1 -->Bug Fixes

- Delete src/cargo_ci_template.rs ([796ba96d](796ba96d6d479194f9cb549a476fe4c96a26cfbb))

### <!-- 5 -->Documentation

- Wording ([382f6f0c](382f6f0c875ed6a183beeba57219e970d4154aca))

