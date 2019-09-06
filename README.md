<img src="./assets/logo.svg" align="center" />

<div align="center">

![Swift](https://img.shields.io/badge/Swift-v5.1-orange) ![SwiftUI](https://img.shields.io/badge/-SwiftUI-blue) ![iOS](https://img.shields.io/badge/iOS-13%2B-blueviolet) ![macOS](https://img.shields.io/badge/macOS-Catalina-red) [![All Contributors](https://img.shields.io/badge/contributors-3-orange)](#Contributors)

</div>

> **Note**: *Mamoot! is under heavy development and is obviously far from complete at this moment. We're currently looking for more people to work with us, so you can help us and discuss development on our [discord server](https://discord.gg/a6UsGgG).*

A minimalist and simple yet powerful Mastodon **and** Twitter client made in SwiftUI.<br>
**Mamoot!** allows users to access all the features Mastodon and Twitter provide and adds even more to them. Some examples are:

1. You can bookmark and save tweets/toots so you can easily find them in the future and read them offline.
2. You can import your posts from any Mastodon instance to Twitter and vice-versa (being that you can only export to Twitter those with less than 280 characters for obvious reasons).
3. Mamoot! does **not** collect any of your data for a safer and more private experience.
4. Blocks Gab's domains.
6. Support for translations (currently Spanish and English).
7. <sup>**EXPERIMENTAL**</sup> Badges for both tweets and toots.
8. More features you will discover while app development progresses.

## Contributors ✨
**Mamoot!** is possible thanks to all these wonderful people ([emoji key](https://allcontributors.org/docs/en/emoji-key)):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore -->
<table>
  <tr>
    <td align="center"><a href="http://ialex11.github.io"><img src="https://avatars3.githubusercontent.com/u/28487357?v=4" width="100px;" alt="Alex M."/><br /><sub><b>Alex M.</b></sub></a><br /><a href="https://github.com/iAlex11/Mamoot/commits?author=iAlex11" title="Code">💻</a></td>
    <td align="center"><a href="https://github.com/Lygre"><img src="https://avatars0.githubusercontent.com/u/16987023?v=4" width="100px;" alt="Hugh Dylan Broome"/><br /><sub><b>Hugh Dylan Broome</b></sub></a><br /><a href="https://github.com/iAlex11/Mamoot/commits?author=Lygre" title="Code">💻</a></td>
    <td align="center"><a href="https://github.com/joePichardo"><img src="https://avatars3.githubusercontent.com/u/16113274?v=4" width="100px;" alt="Joe Pichardo"/><br /><sub><b>Joe Pichardo</b></sub></a><br /><a href="https://github.com/iAlex11/Mamoot/commits?author=joePichardo" title="Code">💻</a></td>
  </tr>
</table>

<!-- ALL-CONTRIBUTORS-LIST:END -->

This project follows the [all-contributors](https://github.com/all-contributors/all-contributors) specification. Contributions of any kind welcome!

## Project structure
Mamoot! aims to be a big project, and for being easier for mortals to maintain it, it is organized as the following:

1.  **Extensions**: All the shared extensions used in the project. For page-specific extensions check each page's extension folder, if available.
2. **Launch**: Code run at launch, duh.
3. **Models**: Project models.
4. **View Models**: Project view models.
5. **Views**: SwiftUI and UIKit views.
    - **Shared**:  shared views of the project.
    - **Components**: Page-specific views.
