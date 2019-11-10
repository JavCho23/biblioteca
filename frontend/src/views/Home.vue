<template>
  <v-container :align="center" :justify="center" class="ma-12 pa-6" fluid>
    <v-row>
      <v-col>
        <v-row :align="alignment" :justify="justify" class="grey lighten-5" style="height: 300px;">
          <v-card class="ma-3" max-width="380" v-for="n in 6" :key="n" outlined tile>
            <v-img
              class="white--text align-end"
              height="200px"
              src="https://cdn.vuetifyjs.com/images/cards/docks.jpg"
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
        </v-row>
      </v-col>
    </v-row>
  </v-container>
</template>

<script>
export default {
  name: "home",
  component: {},
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