<template>
  <div>
    <!-- 引入头部组件 -->
    <loginheader></loginheader>
      <!-- 顶部选项卡 -->
      <div class="login_nav">
        <mt-navbar v-model="active">
          <!-- 普通登录选项卡 -->
          <mt-tab-item id="register_login">
            <router-link to="/login" class="register_login">普通登录</router-link>
          </mt-tab-item>
          <!-- 短信登录选项卡 -->
          <mt-tab-item id="msg_login">
            <router-link to="/msglogin" class="msg_login">短信验证码登录</router-link>
          </mt-tab-item>
        </mt-navbar>
        <!-- 报错 -->
        <div class="register_error" v-show="alert_error">
            帐号不合法，请重新输入。
        </div>
        <div class="register_error" v-show="alert_empty">
            帐号不能为空，请重新输入。
        </div>
      </div>
      <!-- 注册 -->
      <div class="register_phone">
        <mt-field 
          class="register_phone" 
          placeholder="您的手机号" 
          type="text" 
          v-model="phone" 
          :attr="{maxlength:11}"
          :class="phone_border"
          @focus.native.capture="phone_focuse"
          @blur.native.capture="phone_blur">
        </mt-field>
      </div>
      <!-- 登录按钮 -->
      <div class="btn">
        <!-- 注册按钮 -->
          <mt-button 
            type="primary" 
            size="large" 
            class="register_login_btn"
            @click="check">注册
          </mt-button>
        <!-- 登录按钮 -->
        <router-link to="/login">
          <mt-button 
            type="primary" 
            size="large" 
            class="register_btn" 
            plain>登录
          </mt-button>
        </router-link>
      </div>
      <!-- 引入尾部组件 -->
    <loginfooter></loginfooter>
  </div>
</template>

<script>
// 引入头部尾部组件
import loginheader from '../components/Login_header.vue'
import loginfooter from '../components/Login_footer.vue'
// scrit方法
export default {
  data(){
    return{
       // 初始变量
      phone:"",
      phone_border:{outline:false},
      // 报错的css样式
      alert_error:false,
      alert_empty:false,
      active:"register_login"
    }
  },
  methods:{
    // 手机号栏获取焦点，失去焦点
    phone_focuse(){this.phone_border.outline=true},
    phone_blur(){this.phone_border.outline=false},
    // 点击开始验证
    check(){
      // 获取变量
      let phone = this.phone
      let phoneReg = /^1[3-9]\d{9}$/;
      // 验证输入的手机号格式，正确可以登录，错误报出错误
      if(phoneReg.test(phone)){
        this.$router.push({
          path:'/regist',
          query:{
            phone:phone
          }
        })
      }else if(this.phone==""){
        this.alert_empty=true
        this.alert_error=false
      }else{
        this.phone="" 
        this.alert_error=true
        this.alert_empty=false
      }
    }
  },
  watch:{
    // 监听切换导航栏
    active(choose){
      if(choose == "register_login"){
        this.$router.push({path:'/login'})
      }else if(choose == "msg_login"){
        this.$router.push({path:'/msglogin'})
      }
    }
  },
  // 组件
  components:{
    loginheader,
    loginfooter
  }
};
</script>