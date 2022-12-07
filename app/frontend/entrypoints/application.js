import "./main.scss";

// Setup vue as below to sprinkle Vue components on rails views
import { createApp } from "vue/dist/vue.esm-bundler";
import Home from "../components/views/Home.vue";
import MovieGrid from "../components/views/MovieGrid.vue";

const app = createApp({
  data() {
    return {
      message: "Hello Vue 3 and Rails"
    };
  }
});

// import (and use) the components one by one
app.component("moviegrid", MovieGrid);
app.component("Home", Home);
app.mount("#vue");
