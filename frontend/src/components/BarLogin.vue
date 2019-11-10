<template>
  <div>
    <v-app-bar app color="primary" dark>
      <v-app-bar-nav-icon @click="drawer = !drawer"></v-app-bar-nav-icon>
      <v-spacer></v-spacer>
      <span class="mr-2">BIBLIOTECA POST GRADO|</span>
    </v-app-bar>
    <v-navigation-drawer width="300" v-model="drawer" absolute temporary>
      <v-list-item>
        <v-list-item-avatar>
          <v-img src="https://randomuser.me/api/portraits/men/78.jpg"></v-img>
        </v-list-item-avatar>

        <v-list-item-content>
          <v-list-item-title>John Leider</v-list-item-title>
        </v-list-item-content>
      </v-list-item>

      <v-divider></v-divider>

      <v-list>
        <v-list-group prepend-icon="mdi-pencil" value="true">
          <template v-slot:activator>
            <v-list-item-title>Mantenimiento</v-list-item-title>
          </template>

          <v-list-item v-for="(admin, i) in admins" :key="i" link>
            <v-list-item-icon>
              <v-icon v-text="admin[0]"></v-icon>
            </v-list-item-icon>
            <v-list-item-title v-text="admin[1]"></v-list-item-title>
          </v-list-item>
        </v-list-group>
      </v-list>
    </v-navigation-drawer>
  </div>
</template>
<script>
export default {
  name: "App",
  data() {
    return {
      drawer: null,
      admins: [
        ["mdi-book-open-page-variant", "Universidad"],
        ["mdi-book-open-page-variant", "Programa de Estudio"],
        ["mdi-book-open-page-variant", "Libro"],
        ["mdi-book-open-page-variant", "Autores"],
        ["mdi-book-open-page-variant", "Editoriales"]
      ]
    };
  }
};
</script>