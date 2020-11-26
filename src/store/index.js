import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    //标识用户是否已经登录,0表示未登录,1表示已登录
    isLogined:localStorage.getItem('isLogined')|| 0,
    //存储登录用户的相关信息
    userinfo:JSON.parse(localStorage.getItem('userinfo')) || {},
    //通过图标切换join和candidate页面切换
    ischange:localStorage.getItem('ischange')|| 0
  },
  mutations: {//mutations是改变状态的操作方法，也是vuex中修改state的唯一方法
    //登录
		login_mutations(state,payload){			
			// 修改登录状态为1
      state.isLogined = 1;
      // 修改登录用户的相关信息
      state.userinfo = payload;
      // console.log(state.userinfo)
      // console.log(state.userinfo.photo)
    },
    //注销
    logout_mutations(state){
      //修改登录状态为0 
      state.isLogined = 0;
    },
    //切换candidate页面事件
    change_mutations(state){
      state.ischange=1
    },
    //返回join页面事件
    changed_mutations(state){
      state.ischange=0
    }
    
  },
  actions: {
  },
  modules: {
  }
})
