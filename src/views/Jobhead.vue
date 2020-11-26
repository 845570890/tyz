<template>
  <div>
    <div class="jshead">
        <div class="header-bg"></div>
        <div class="header-nav" @click="caidan" v-if="this.$store.state.ischange == 0"><img src="../assets/image/caidan.png"></div>
        <div class="header-nav" @click="cha" v-else><img src="../assets/image/X.png"></div>   
    </div>
    <!-- 路由嵌套 -->
        <transition :name="pop">
          <router-view></router-view>
        </transition>
  </div>
</template>
<script>
export default {
  data(){
    return{
      pop:''
    }
  },
  methods:{
    caidan(){//调用切换到candidate页面的mutations事件
      this.$store.commit('change_mutations');
      //将用户状态保存到webstorage中
      localStorage.setItem('ischange',1)
      this.$router.push('/jobhead/candidate')
    },
    cha(){
      this.$store.commit('changed_mutations');
      this.$router.push('/jobhead/join')
    }
  },
  watch:{
    //v-class的应用  candidate页面的过度效果
    $route(to,from){
      if(to.path=="/jobhead/candidate"){
        this.pop='mypop'
      }
      if(to.path=="/jobhead/join"){
        this.pop=''
        //清除图标为x的状态
        localStorage.clear();
      }
    }
  }
}
</script>
