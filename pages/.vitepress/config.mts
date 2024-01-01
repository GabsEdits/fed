import { defineConfig } from "vitepress";

// https://vitepress.dev/reference/site-config
export default defineConfig({
  lang: "en-US",
  title: "My Fedora Workstation",
  description:
    "My Fedora installation and a post-install-configuration script",

  lastUpdated: true,
  cleanUrls: true,

  themeConfig: { // Main Theme
    author: "Gabriel Cozma/Gabs", // Your name
    nav: {
      links: [ 
        { text: "Script Source", link: "/script" },
      ],
      git: "https://github.com/GabsEdits/fed", // Link to the source code of your site
    },
    footer: {
      // To disable any of these, just set them to false, to enable them, set them to true
      copyright: true,
      poweredBy: true,

      // To change the text of any of these, just change the text in the quotes, if you want to disable it entirely, set show to false
      madeby: {
        show: true,
        name: "Gabs",
        link: "https://gxbs.,e",
      },
    },
  },
  markdown: {
    container: { // The markdown cards
      warningLabel: "⚠ Warning",
      tipLabel: "Tip",
      dangerLabel: "⚠ Danger",
      infoLabel: "Info",
    },
  },
  head: [ // The head of the page, this is where you put your meta tags
    ["link", { rel: "icon", href: "https://raw.githubusercontent.com/twitter/twemoji/d94f4cf793e6d5ca592aa00f58a88f6a4229ad43/assets/svg/1f38b.svg" }],
    ["meta", { name: "og:type", content: "website" }],
    ["meta", { name: "og:locale", content: "en" }],
    ["meta", { name: "og:site_name", content: "Template" }],
    [
      "meta",
      {
        name: "og:image",
        content: "https://aplos.gxbs.me/images/aplos-banner.jpg",
      },
    ],
    ["meta", { name: "twitter:card", content: "summary_large_image" }],
    [
      "meta",
      {
        name: "twitter:image",
        content: "https://aplos.gxbs.me/images/aplos-banner.jpg",
      },
    ],
    ["meta", { name: "twitter:title", content: "Aplós" }],
    [
      "meta",
      {
        name: "twitter:description",
        content: "Aplós is a cool template for vitepress",
      },
    ],
    [
      "meta",
      { name: "twitter:url", content: "https://fed.gxbs.me" },
    ],
  ],
  sitemap: { // The sitemap, for SEO
    hostname: "https://fed.gxbs.me", // The hostname (domain) of your site
  },
});
