import type { Theme } from "vitepress";
import Aplos from "aplos/Layout.vue";
import "aplos";
import "./custom.scss";

export default {
  Layout: Aplos,
} satisfies Theme;
