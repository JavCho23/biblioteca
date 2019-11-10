<template>
  <v-app>
    <v-app-bar app color="primary" dark>
      <v-spacer></v-spacer>
      <v-btn href target="_blank" text>
        <span class="mr-2">BIBLIOTECAS| UNIVERSIDAD NACIONAL PEDRO RUIZ GALLO</span>
    </v-app-bar>

    <v-content>
      <router-view />
    </v-content>

  </v-app>
</template>

<script>
export default {
  name: "App",

  components: {},

  data: () => ({
    //
  })
};
</script>
