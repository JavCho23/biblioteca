export default new Router({
    mode:'history',
    routes:[
        {
            path:'/',
            name:'Home',
            component:() => import('./views/Home.vue')
        },
        {
            path:'/Login',
            name:'Login',
            component: () => import('./views/Login.vue')
        }
    ]
})