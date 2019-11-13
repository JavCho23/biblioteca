<template>
  <div>
    <Bar />
    <v-container class="ma-6 pa-4" fluid>
      <v-row>
        <v-col v-for="n in 5" :key="n">
          <v-card class="align-content-center flex-wrap" max-width="380" raised :elevation="20">
            <v-img
              class="white--text align-end"
              height="200px"
              src="../../imagenes/portada.jpeg"
            >
              <v-card-title>Biblioteca de PostGrado</v-card-title>
            </v-img>

            <v-card-text class="text--primary">
              <div>Whitehaven Beach</div>

              <div>Whitsunday Island, Whitsunday Islands</div>
            </v-card-text>
            <v-card-actions>
              <v-btn @click="Login" color="primary" text>Ingresar</v-btn>
            </v-card-actions>
          </v-card>
        </v-col>
      </v-row>
    </v-container>
  </div>
</template>

<script>
import Bar from "@/components/BarPublic.vue";
export default {
  name: "home",
  components: {
    Bar
  },
  data() {
    return {};
  },
  methods: {
    Login() {
      this.$router.push("/Login");
    }
  }
};
</script>