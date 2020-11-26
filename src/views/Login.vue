<template>
  <div>
    <!-- 引入头部组件 -->
    <loginheader></loginheader>
      <!-- 顶部选项卡 -->
      <div class="login_nav">
        <mt-navbar v-model="active">
          <!-- 普通登录选项卡 -->
          <mt-tab-item id="common_login">
            <router-link to="/login" class="common_login">普通登录</router-link>
          </mt-tab-item>
          <!-- 短信登录选项卡 -->
          <mt-tab-item id="msg_login">
            <router-link to="/msglogin" class="msg_login">短信验证码登录</router-link>
          </mt-tab-item>
        </mt-navbar>
      </div>
      <!-- 普通登录 -->
      <div class="common_nav">
        <div>
          <!-- 错误 -->
          <div class="common_error" v-show="error">
            账号密码错误，请重试或找回密码
          </div>
          <!-- 账号 -->
          <mt-field 
            class="common_phone" 
            placeholder="您的邮箱/手机号" 
            type="text" 
            v-model="phone" 
            :attr="{maxlength:11}" 
            :class="phone_border"
            @focus.native.capture="phone_focuse"
            @blur.native.capture="phone_blur">
          </mt-field>
          <!-- 密码 -->
          <mt-field 
            class="common_pawd" 
            placeholder="您的密码" 
            type="password" 
            v-model="pawd" 
            :attr="{maxlength:15}"
            :class="pawd_border"
            @focus.native.capture="pawd_focuse"
            @blur.native.capture="pawd_blur">
          </mt-field>
        </div>
      </div>
      <!-- 忘记密码 -->
      <div class="common_forget">
        <router-link to="/forget" class="fourget_a">忘记密码？</router-link>
      </div>
      <!-- 登录按钮 -->
      <div class="btn">
        <!-- 登录按钮 -->
        <mt-button 
          type="primary" 
          size="large" 
          class="login_btn"
          :class="btn_border"
          @focus.native.capture="btn_focuse"
          @blur.native.capture="btn_blur"
          @click="check">登录
        </mt-button>
        <!-- 快速注册按钮 -->
        <router-link to="/register" >
          <mt-button 
            type="primary" 
            size="large" 
            class="register_btn" 
            plain
            :class="reg_border"
            @focus.native.capture="reg_focuse"
            @blur.native.capture="reg_blur">快速注册
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
import { aliceblue } from 'color-name';
// script方法
export default {
  data(){
    return{
      // 默认值
      error:false,
      phone:"",
      pawd:"",
      active:"common_login",
      // 输入框的css样式
      phone_border:{outline:false,shadow:false},
      pawd_border:{outline:false,shadow:false},
      // 按钮的css样式
      btn_border:{btn_outline:false},
      reg_border:{btn_outline:false}
    }
  },
  methods:{
    // 手机号栏获取焦点，失去焦点
    phone_focuse(){this.phone_border.outline=true,this.phone_border.shadow=false},
    phone_blur(){this.phone_border.outline=false},
    // 密码栏获取焦点，失去焦点
    pawd_focuse(){this.pawd_border.outline=true,this.pawd_border.shadow=false},
    pawd_blur(){this.pawd_border.outline=false},
    // 登录按钮取焦点，失去焦点
    btn_focuse(){this.btn_border.btn_outline=true},
    btn_blur(){this.btn_border.btn_outline=false},
    // 注册按钮获取焦点，失去焦点
    reg_focuse(){this.reg_border.btn_outline=true},
    reg_blur(){this.reg_border.btn_outline=false},
    // 点击登录检测手机号和密码
    check(){
      // let所需变量
      let phone = this.phone;
      let phoneReg = /^1[3-9]\d{9}$/;
      let pawd = this.pawd;
      let pawdReg = /^[0-9A-Za-z\.\-_]{6,15}$/;
      // 验证输入框是否为空，为空则显示红色边框阴影
      if(phone=="" && pawd==""){
        this.phone_border.shadow=true
        this.pawd_border.shadow=true
      }else if(phone==""){
        this.phone_border.shadow=true
      }else if(pawd==""){
        this.pawd_border.shadow=true
      }// 验证两个输入框内容是否正确，正确可以登录，错误报出错误
      else if(phoneReg.test(phone) && pawdReg.test(pawd)){
       this.axios.post('/login','phone='+phone+'&pawd='+pawd).then(res=>{
          if(res.data.code == 1){
             // console.log(res.data.userinfo)
            //提交mutations，以修改用户的登录状态
            this.$store.commit('login_mutations',res.data.userinfo);
            // console.log(res.data.userinfo)
            //将用户状态保存到webstorage中
            localStorage.setItem('isLogined',1)
            localStorage.setItem('userinfo',JSON.stringify(res.data.userinfo))
            // 页面跳转
            this.$router.push('/')
          }else{
            this.error=true
          }
        })
      }else{
        this.error=true
      }
    }
  },
  mounted(){
    //通过axios向服务器发送请求
    this.axios.get('/login').then(res=>{

    })
  },
  // 监听切换tabbar
  watch:{
    active(change){
      if(change == "common_login"){
        this.$router.push({path:'/login'})
      }else if(change == "msg_login"){
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
