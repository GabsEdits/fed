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
    author: "Gabriel Cozma", // Your name
    nav: {
      show: false,
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

      sourcecode: {
        show: true,
        link: "https://github.com/GabsEdits/fed"
      },

      madeby: {
        show: true,
        name: "Gabs",
        link: "https://gxbs.me",
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
  head: [
    ["link", { rel: "icon", href: "https://raw.githubusercontent.com/twitter/twemoji/d94f4cf793e6d5ca592aa00f58a88f6a4229ad43/assets/svg/1f38b.svg" }],
    ["meta", { name: "og:type", content: "website" }],
    ["meta", { name: "og:locale", content: "en" }],
    ["meta", { name: "og:site_name", content: "My Fedora Workstation (fed)" }],
    ["meta", { name: "twitter:title", content: "My Fedora Workstation (fed)" }],
    [
      "meta",
      {
        name: "twitter:description",
        content: "A simple yet useful `Shell Script` that optimizes your system based on my prefrences. Also helps me to install everything I need for an new install.",
      },
    ],
    [
      "meta",
      { name: "twitter:url", content: "https://fed-jet.vercel.app" },
    ],
  ],
  sitemap: { 
    hostname: "https://fed-jet.vercel.app",
  },
});
