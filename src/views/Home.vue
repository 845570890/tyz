<template>
<div>
  <div v-if="isshow==true">
    <!-- 顶部导航开始 -->
    <div class="MFWheader">
      <div class="MFWLG">
        <router-link to="/" class="logo"></router-link>
      </div>
      <div class="search-hd">
        <form class="searchBOX-hd" @click="search">
          <input type="text" placeholder="搜索目的地/攻略/游记" readonly>
          <button></button>
        </form>
      </div>
      <div class="shortcut" v-if="this.$store.state.isLogined == 0">
        <router-link to="/login">登录</router-link>
      </div>
      <div class="shortcut-2" v-else>
        <router-link to="/"><img :src="require(`../assets/image/${this.$store.state.userinfo.photo}`)" ></router-link>
      </div>
    </div>
    <!-- 顶部导航结束 -->
    <!-- 轮播图开始 -->
    <mt-swipe :auto="3000" class="carousel">
      <mt-swipe-item><img src="../assets/image/CoUBXl-iyTSALZUjACK7JOWOWM4294.png" alt=""></mt-swipe-item>
      <mt-swipe-item><img src="../assets/image/CoUBXl-kEPGAdjZYACR-5u0fH2M708.png" alt=""></mt-swipe-item>
      <mt-swipe-item><img src="../assets/image/CoUBXl-lb5KAQTTnACBxQJHpR2o245.png" alt=""></mt-swipe-item>
    </mt-swipe>
    <!-- 轮播图结束 -->
    <!-- 菜单栏开始 -->
    <ul class="Menu">
      <li>
        <router-link to="/find" class="d1">
          <div></div>
          <p>找攻略</p>
        </router-link>  
      </li>
      <li>
        <router-link to="/" class="d2">
          <div></div>
          <p>看游记</p>
        </router-link>  
      </li>
      <li>
        <router-link to="/" class="d3">
          <div></div>
          <p>问达人</p>
        </router-link>  
      </li>
      <li>
        <router-link to="/" class="d4">
          <div></div>
          <p>头脑学员</p>
        </router-link>  
      </li>
      <li>
        <router-link to="/" class="d5">
          <div></div>
          <p>酒店</p>
        </router-link>  
      </li>
      <li>
        <router-link to="/" class="d6">
          <div></div>
          <p>去旅行</p>
        </router-link>  
      </li>
      <li>
        <router-link to="/" class="d7">
          <div></div>
          <p>机票</p>
        </router-link>  
      </li>
      <li>
        <router-link to="/entertainment" class="d8">
          <div></div>
          <p>当地玩乐</p>
        </router-link>  
      </li>
    </ul>
    <!-- 菜单栏结束 -->
    <Article></Article>

    <!-- 回顶部按钮为一张50*50的图片 -->
    <!-- btnFlag 控制图片显示隐藏 -->
    <!-- backTop 回顶部的方法 -->
    <a href="javascript:;" class="go-top" v-show="btnFlag" @click="backTop"></a>
    
    <!-- 页尾开始 -->
    <footer class="footer">
      <ul>
       <li><a href="http://www.mafengwo.cn">PC版</a></li>
       <li><router-link to="/suggestion">用户反馈</router-link></li>
       <li><router-link to="/jobhead/join">加入我们</router-link></li>
       <li v-if="this.$store.state.isLogined == 0"><router-link to="/login">登录</router-link></li>
       <li v-else @click="logout"><router-link to="/">注销</router-link></li>
       <!-- 注销时，页面跳转需要把登录状态去掉 待实现 -->
      </ul>
      <p>© 2020 Mafengwo.cn 京ICP备11015476号 </p>
      <p>北京蚂蜂窝网络科技有限公司  <a href="https://p1-q.mafengwo.net/s16/M00/81/DE/CoUBUl6MWTuAFsH8ACJfxXMZfbg29.jpeg">企业营业执照</a>
      <p>马蜂窝客服：+86-10-8341-6888</p>
    </footer>
    <!-- 页尾结束 -->
  </div>
  <div class="search_box" v-else>
    <form class="frm_query">
      <input type="text" placeholder="搜索目的地/攻略/游记/问答" autofocus="autofocus">
      <a type="button" @click="search_box">取消</a>
    </form>
    <router-link to="/"><img src="../assets/image/wKgE2l0SyfuAfEFxAAD9_syCgn4102.gif" alt=""></router-link>
  </div>
</div>
</template>
<script>
import Article from './Article.vue'
export default {
  components:{Article},
  data(){
    return{
      isshow:true,
      btnFlag:false,
      scrollTop:0,
    }
  },
  methods:{
    search(){
      this.isshow=false
    },
    search_box(){
      this.isshow=true
    },
    //用户注销 调用store中mutations注销事件
    logout(){
      this.$store.commit('logout_mutations');
      //清除webstorage中的数据
      localStorage.clear();
    },
    // 点击图片回到顶部方法，加计时器是为了过渡顺滑
    backTop () {
      let that = this
      let timer = setInterval(() => {
        let ispeed = Math.floor(-that.scrollTop / 5)
        document.documentElement.scrollTop = document.body.scrollTop = that.scrollTop + ispeed
        if (that.scrollTop === 0) {
          clearInterval(timer)
        }
      }, 16)
    },

    // 为了计算距离顶部的高度，当高度大于50显示回顶部图标，小于50则隐藏
    scrollToTop () {
    let that = this
    //scrolltop有兼容性 所有用以下方法
    let scrollTop = window.pageYOffset || document.documentElement.scrollTop || document.body.scrollTop
    that.scrollTop = scrollTop
    if (that.scrollTop > 50) {
      that.btnFlag = true
    } else {
      that.btnFlag = false
      }
    }
  },
  mounted(){
    //window对象表示浏览器窗口，监听滚动事件，所有浏览器都支持window对象
    window.addEventListener('scroll', this.scrollToTop)
  }
}
</script>




