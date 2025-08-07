# Changelog

## [2.0.0](https://github.com/voxpupuli/beaker-hiera/tree/2.0.0) (2025-08-07)

[Full Changelog](https://github.com/voxpupuli/beaker-hiera/compare/1.1.1...2.0.0)

**Breaking changes:**

- Require Ruby 3.2 or newer [\#44](https://github.com/voxpupuli/beaker-hiera/pull/44) ([bastelfreak](https://github.com/bastelfreak))

**Implemented enhancements:**

- CI: Generate matrix dynamically / drop simplecov [\#43](https://github.com/voxpupuli/beaker-hiera/pull/43) ([bastelfreak](https://github.com/bastelfreak))
- beaker: Allow 7.x [\#42](https://github.com/voxpupuli/beaker-hiera/pull/42) ([bastelfreak](https://github.com/bastelfreak))

## [1.1.1](https://github.com/voxpupuli/beaker-hiera/tree/1.1.1) (2024-05-28)

[Full Changelog](https://github.com/voxpupuli/beaker-hiera/compare/1.1.0...1.1.1)

There were some problems with the CI pipeline, so the 1.1.0 release was only published to GitHub packages, not to rubygems.org. This is fixed with the 1.1.1 release.

**Fixed bugs:**

- Fix typo in CI config [\#36](https://github.com/voxpupuli/beaker-hiera/pull/36) ([bastelfreak](https://github.com/bastelfreak))

## [1.1.0](https://github.com/voxpupuli/beaker-hiera/tree/1.1.0) (2024-05-28)

[Full Changelog](https://github.com/voxpupuli/beaker-hiera/compare/1.0.0...1.1.0)

**Implemented enhancements:**

- beaker: Allow 6.x [\#34](https://github.com/voxpupuli/beaker-hiera/pull/34) ([bastelfreak](https://github.com/bastelfreak))
- Add Ruby 3.3 to CI matrix [\#33](https://github.com/voxpupuli/beaker-hiera/pull/33) ([bastelfreak](https://github.com/bastelfreak))

**Merged pull requests:**

- voxpupuli-rubocop: Require 2.7.0 [\#32](https://github.com/voxpupuli/beaker-hiera/pull/32) ([bastelfreak](https://github.com/bastelfreak))
- CI: Build gems with strict and verbose mode [\#31](https://github.com/voxpupuli/beaker-hiera/pull/31) ([bastelfreak](https://github.com/bastelfreak))
- README.md: Add badges, transfer notice and release information [\#30](https://github.com/voxpupuli/beaker-hiera/pull/30) ([bastelfreak](https://github.com/bastelfreak))

## [1.0.0](https://github.com/voxpupuli/beaker-hiera/tree/1.0.0) (2023-11-03)

[Full Changelog](https://github.com/voxpupuli/beaker-hiera/compare/0.6.0...1.0.0)

**Breaking changes:**

- Convert to Hiera 5 [\#17](https://github.com/voxpupuli/beaker-hiera/pull/17) ([ekohl](https://github.com/ekohl))

## [0.6.0](https://github.com/voxpupuli/beaker-hiera/tree/0.6.0) (2023-05-05)

[Full Changelog](https://github.com/voxpupuli/beaker-hiera/compare/0.5.0...0.6.0)

**Merged pull requests:**

- GCG: Add faraday-retry dep [\#26](https://github.com/voxpupuli/beaker-hiera/pull/26) ([bastelfreak](https://github.com/bastelfreak))
- switch to voxpupuli-rubocop and cleanup gemspec [\#25](https://github.com/voxpupuli/beaker-hiera/pull/25) ([bastelfreak](https://github.com/bastelfreak))
- Update release workflow for Vox Pupuli standard [\#24](https://github.com/voxpupuli/beaker-hiera/pull/24) ([bastelfreak](https://github.com/bastelfreak))

## [0.5.0](https://github.com/voxpupuli/beaker-hiera/tree/0.5.0) (2023-03-28)

[Full Changelog](https://github.com/voxpupuli/beaker-hiera/compare/0.4.0...0.5.0)

**Breaking changes:**

- update to beaker 5; Drop Ruby 2.4/2.5/2.6 support [\#19](https://github.com/voxpupuli/beaker-hiera/pull/19) ([rwaffen](https://github.com/rwaffen))

**Closed issues:**

- update to beaker 5 [\#18](https://github.com/voxpupuli/beaker-hiera/issues/18)

**Merged pull requests:**

- Implement rubocop & fix violations [\#22](https://github.com/voxpupuli/beaker-hiera/pull/22) ([bastelfreak](https://github.com/bastelfreak))
- dependabot: check for github actions and gems [\#21](https://github.com/voxpupuli/beaker-hiera/pull/21) ([bastelfreak](https://github.com/bastelfreak))

## [0.4.0](https://github.com/voxpupuli/beaker-hiera/tree/0.4.0) (2021-05-19)

[Full Changelog](https://github.com/voxpupuli/beaker-hiera/compare/0.3.0...0.4.0)

**Implemented enhancements:**

- Support Ruby 3 [\#16](https://github.com/voxpupuli/beaker-hiera/pull/16) ([ekohl](https://github.com/ekohl))

**Fixed bugs:**

- Handle an array of hosts in copy\_hiera\_data\_to [\#15](https://github.com/voxpupuli/beaker-hiera/pull/15) ([ekohl](https://github.com/ekohl))

## [0.3.0](https://github.com/voxpupuli/beaker-hiera/tree/0.3.0) (2021-05-18)

[Full Changelog](https://github.com/voxpupuli/beaker-hiera/compare/0.2.0...0.3.0)

**Merged pull requests:**

- Release 0.3.0 [\#14](https://github.com/voxpupuli/beaker-hiera/pull/14) ([ekohl](https://github.com/ekohl))
- Update Github actions [\#13](https://github.com/voxpupuli/beaker-hiera/pull/13) ([ekohl](https://github.com/ekohl))
- Update the authors, email and homepage to VP [\#12](https://github.com/voxpupuli/beaker-hiera/pull/12) ([ekohl](https://github.com/ekohl))
- Require Ruby ~\> 2.4 [\#11](https://github.com/voxpupuli/beaker-hiera/pull/11) ([ekohl](https://github.com/ekohl))
- Use ruby/setup-ruby action [\#10](https://github.com/voxpupuli/beaker-hiera/pull/10) ([ekohl](https://github.com/ekohl))
- Correct documentation strings [\#9](https://github.com/voxpupuli/beaker-hiera/pull/9) ([ekohl](https://github.com/ekohl))
- Clean up specs [\#8](https://github.com/voxpupuli/beaker-hiera/pull/8) ([ekohl](https://github.com/ekohl))
- Indicate the project is not EOL and add example [\#7](https://github.com/voxpupuli/beaker-hiera/pull/7) ([ekohl](https://github.com/ekohl))
- Always prefer codedir for hieradata [\#6](https://github.com/voxpupuli/beaker-hiera/pull/6) ([ekohl](https://github.com/ekohl))
- Do not shadow a variable & inline hash definition [\#5](https://github.com/voxpupuli/beaker-hiera/pull/5) ([ekohl](https://github.com/ekohl))
- Add Github actions for CI + clean up gem deps [\#4](https://github.com/voxpupuli/beaker-hiera/pull/4) ([ekohl](https://github.com/ekohl))

## [0.2.0](https://github.com/voxpupuli/beaker-hiera/tree/0.2.0) (2020-11-10)

[Full Changelog](https://github.com/voxpupuli/beaker-hiera/compare/0.1.1...0.2.0)

**Merged pull requests:**

- Release 0.2.0 before moving the repo to Vox Pupuli [\#3](https://github.com/voxpupuli/beaker-hiera/pull/3) ([lucywyman](https://github.com/lucywyman))
- \(BKR-1500\) Mothball beaker-hiera [\#2](https://github.com/voxpupuli/beaker-hiera/pull/2) ([Dakta](https://github.com/Dakta))

## [0.1.1](https://github.com/voxpupuli/beaker-hiera/tree/0.1.1) (2015-10-14)

[Full Changelog](https://github.com/voxpupuli/beaker-hiera/compare/0.1.0...0.1.1)

**Merged pull requests:**

- \(BKR-562\) removed leftover spec lines [\#1](https://github.com/voxpupuli/beaker-hiera/pull/1) ([kevpl](https://github.com/kevpl))

## [0.1.0](https://github.com/voxpupuli/beaker-hiera/tree/0.1.0) (2015-09-08)

[Full Changelog](https://github.com/voxpupuli/beaker-hiera/compare/84dbbc6be29c41e74d862665fe9aa9dd7bbacb18...0.1.0)



\* *This Changelog was automatically generated by [github_changelog_generator](https://github.com/github-changelog-generator/github-changelog-generator)*
