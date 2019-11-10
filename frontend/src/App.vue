<template>
  <v-app>
    <router-view />
    <v-app-bar
      app
      color="primary"
      dark
    >
      <div class="d-flex align-center">
        <v-img
          alt="Vuetify Logo"
          class="shrink mr-2"
          contain
          src=""
          transition="scale-transition"
          width="40"
        />

        <v-img
          alt="Vuetify Name"
          class="shrink mt-1 hidden-sm-and-down"
          contain
          min-width="100"
          src=""
          width="100"
        />
      </div>

      <v-spacer></v-spacer>

        <span class="mr-2">BIBLIOTECAS| UNIVERSIDAD NACIONAL PEDRO RUIZ GALLO</span>
    </v-app-bar>

    <v-content>
    </v-content>
  </v-app>
</template>

<script>

export default {
  name: 'App',

  components: {
  },

  data: () => ({
    //
  }),
};
</script>
