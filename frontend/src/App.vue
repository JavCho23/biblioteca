<template>
  <v-app>
    <v-app-bar max-height="4em" color="primary" dark>
      <v-spacer></v-spacer>

      <v-btn href target="_blank" text>
        <span class="mr-2">BIBLIOTECAS| UNIVERSIDAD NACIONAL PEDRO RUIZ GALLO</span>
      </v-btn>
    </v-app-bar>
    <router-view />
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
