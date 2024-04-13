import type { Theme } from "vitepress";
import Aplos from "aplos/no-blog/Layout.vue";
import "aplos/no-blog";
import "./custom.scss";

export default {
  Layout: Aplos,
} satisfies Theme;