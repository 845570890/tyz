import Vue from 'vue';
import App from './App.vue';
import router from './router';
import store from './store';
import axios from 'axios';
import qs from 'qs';
import moment from 'moment';

//导入MintUI的所有组件
import MintUI from 'mint-ui';

//导入MintUI的样式文件
import 'mint-ui/lib/style.min.css';
//gjw
import "./assets/article.css"
import "./assets/details.css"

//fty
import "../src/assets/styles/home.css"
//wy
import "../src/assets/styles/login.css"
import "../src/assets/styles/find.css"
// 导入首页当地娱乐部分css
import "../src/assets/styles/entertainment.css"
//通过Vue.use()方法将Mint UI注册为Vue的插件
Vue.use(MintUI);
axios.defaults.baseURL = 'http://mafengwo.applinzi.com'
Vue.prototype.axios = axios;
Vue.prototype.moment = moment;
Vue.prototype.qs = qs;
Vue.config.productionTip = false

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
