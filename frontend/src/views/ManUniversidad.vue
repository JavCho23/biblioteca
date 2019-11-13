<template>
  <div class="d-flex mx-auto mt-8 pa-4">
    <Bar />
    <v-card>
      <v-form v-model="valid">
        <v-container class="d-flex flex-column mx-auto mt-8 pa-4" :elevation="20">
          <v-container-title>
            <h1 class="title" style="color:#78909C">UNIVERSIDAD</h1>
          </v-container-title>
          <v-row class="d-flex flex-column">
            <v-text-field v-model="firstname" :rules="nameRules" label="Ingrese Nombre" required></v-text-field>
            <v-card-actions>
              <v-btn color="#0C21A7" dark>Registrar</v-btn>
            </v-card-actions>
          </v-row>
        </v-container>
      </v-form>
    </v-card>
    <v-card>
      <v-container>
        <v-container-title>
          <h2>Mantenimiento</h2>
          <v-spacer></v-spacer>
        </v-container-title>
      </v-container>
    </v-card>
  </div>
</template>
<script>
import Bar from "@/components/BarLogin.vue";
export default {
  name: "App",
  components: {
    Bar
  },
  data: () => ({
    valid: false,
    firstname: "",
    lastname: "",
    nameRules: [v => !!v || "Ingrese Nombre"]
  })
};
</script>