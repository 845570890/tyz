import Vue from 'vue'
import VueRouter from 'vue-router'

//gjy
import Article from '../views/Article.vue'
import Details from '../views/Details.vue'
import Report from '../views/Report.vue'

//tyz
import Entertainment from '../views/Entertainment.vue';
//wy
import Login_header from '../components/Login_header.vue'
import Login_footer from '../components/Login_footer.vue'
import Find_header from '../components/Find_header.vue'
import Login from '../views/Login.vue';
import Regist from '../views/Regist.vue'
import Register from '../views/Register.vue';
import MsgLogin from '../views/MsgLogin.vue';
import Forget from '../views/Forget.vue';
import Find from '../views/Find.vue';
//fty
import Home from '../views/Home.vue'
import Head from '../components/Head.vue';
import Suggestion from '../views/Suggestion.vue';
import Join from '../components/Join.vue';
import Candidate from '../components/Candidate.vue';
import Jobhead from '../views/Jobhead.vue';
Vue.use(VueRouter)
const routes = [
  //gjw
  {
    path:'/article',
    component:Article
  },
  {
    path:'/details',
    component:Details
  },
  {
    path:'/report',
    component:Report
  },
  //fty
  {
    path: '/jobhead',
    component: Jobhead,
    children:[
      {//路由嵌套 子路由不能加/
        path: 'candidate',  
        component: Candidate
      },
      {
        path: 'join',
        component: Join
      } 
    ]
  },
  {
    path: '/suggestion',
    component: Suggestion
  },
  {
    path: '/head',
    component: Head
  },
  {
    path: '/',
    component: Home
  },
  //wy
  {
    path:'/find_header',
    component:Find_header
  },
  {
    path:'/find',
    component:Find
  },
  {
    path:'/login_header',
    component:Login_header
  },
  {
    path:'/login_footer',
    component:Login_footer
  },
  {
    path:'/regist',
    component:Regist
  },
  {
    path:'/register',
    component:Register
  },
  {
    path:'/forget',
    component:Forget
  },
  {
    path:'/login',
    component:Login
  },
  {
    path:'/msglogin',
    component:MsgLogin
  },
  //tyz
  {
    path:'/entertainment',
    component:Entertainment
  }

]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
