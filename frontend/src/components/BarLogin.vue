<template>
  <div>
    <v-app-bar app color="#0C21A7 " dark>
      <v-app-bar-nav-icon @click="drawer = !drawer"></v-app-bar-nav-icon>
      <v-spacer></v-spacer>
      <span class="mr-2">BIBLIOTECA POST GRADO|</span>
      <v-btn text icon>
        <v-icon>mdi-export</v-icon>
      </v-btn>
    </v-app-bar>
    <v-navigation-drawer width="320" v-model="drawer" absolute temporary>
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
        <v-list-group prepend-icon="mdi-tooltip-edit">
          <template v-slot:activator>
            <v-list-item-title>Mantenimiento</v-list-item-title>
          </template>

          <v-list-item v-for="(admin, i) in admins" :key="i" link>
            <v-list-item-title v-text="admin[0]" :to="rutas[0]"></v-list-item-title>
          </v-list-item>
        </v-list-group>
        <v-list-group prepend-icon="mdi-tag-remove">
          <template v-slot:activator>
            <v-list-item-title>Prestamos y Reservas</v-list-item-title>
          </template>
          <v-list-item v-for="(items, i) in items" :key="i" link>
            <v-list-item-title v-text="items[0]"></v-list-item-title>
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
        ["Universidad"],
        ["Programa de Estudio"],
        ["Libro"],
        ["Autor"],
        ["Editorial"]
      ],
      items: [["Prestamo"], ["Reserva"]],
      rutas:[['/universidad']]
    };
  }
};
</script>