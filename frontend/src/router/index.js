import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../views/Home.vue'

Vue.use(VueRouter)

const routes = [{
  path: '/',
  name: 'home',
  component: Home
},
{
  path: '/Login',
  name: 'Login',
  component: () => import( '../views/Login.vue')
},
{
  path: '/biblioteca',
  name: 'biblioteca',
  component: () => import('../views/Biblioteca.vue')
}
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router