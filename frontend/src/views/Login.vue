<template>
  <v-app>
    <v-card width="480" class="mx-auto mt-8 pa-2">
      <v-card-title>
        <h1 class="title " style="color:#0058BC">Bienvenido</h1>
      </v-card-title>
      <v-card-text>
        <v-form>
          <v-text-field label="Usuario" prepend-icon="mdi-account-circle" />
          <v-text-field
            :type="showPassword ? 'text' : 'password'"
            label="Password"
            prepend-icon="mdi-lock"
            append-icon="mdi-eye-off"
            @click:append="showPassword = 
            !showPassword"
          />
        </v-form>
      </v-card-text>
      <v-card-action>
        <v-spacer></v-spacer>
        <v-btn color="primary">Ingresar</v-btn>
      </v-card-action>
    </v-card>
  </v-app>
</template>
<script>
export default {
  name: "App",
  data: () => ({
    showPassword: false
  })
};
</script>