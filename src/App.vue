<template>
  <div>
    <v-app-bar color="red">
      <v-app-bar-nav-icon></v-app-bar-nav-icon>
      <v-toolbar-title>BIBLIOTECAS UNPRG</v-toolbar-title>

      <v-spacer></v-spacer>
      <v-menu left bottom>
        <template v-slot:activator="{ on }">
          <v-btn icon v-on="on">
            <v-icon>mdi-dots-vertical</v-icon>
          </v-btn>
        </template>

        <v-list>
          <v-list-item v-for="n in 5" :key="n" @click="() => {}">
            <v-list-item-title>Option {{ n }}</v-list-item-title>
          </v-list-item>
        </v-list>
      </v-menu>
    </v-app-bar>
  </div>
</template>
<script>
export default {
  name: "App",
  data() {
    return {};
  }
};
</script>