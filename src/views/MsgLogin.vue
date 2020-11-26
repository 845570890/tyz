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
      <!-- 短信验证登录 -->
      <div class="msg_nav">
        <div>
          <!-- 手机号 -->
          <mt-field 
            class="msg_phone" 
            placeholder="您的手机号" 
            type="text" 
            v-model="msg_phone"
            :attr="{maxlength:11}"
            :class="phone_border"
            @focus.native.capture="phone_focuse"
            @blur.native.capture="phone_blur">
          </mt-field>
          <!-- 图形验证码 -->
          <mt-field 
            class="msg_mage" 
            placeholder="验证码" 
            type="text" 
            v-model="msg_code" 
            :attr="{maxlength:4}"
            :class="mage_border"
            @focus.native.capture="mage_focuse"
            @blur.native.capture="mage_blur">
            <div><img src="../assets/image/code/a (3).jpg"></div>
          </mt-field>
          <!-- 短信验证码 -->
          <mt-field 
            class="msg_pawd" 
            placeholder="短信验证码" 
            type="text" 
            v-model="msg_msgcode" 
            :attr="{maxlength:8}"
            :class="pawd_border"
            @focus.native.capture="pawd_focuse"
            @blur.native.capture="pawd_blur">
            <div class="get_code">免费获取验证码</div>
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
          @click="check">登录
        </mt-button>
        <!-- 快速注册 -->
        <router-link to="/register" >
          <mt-button 
            type="primary" 
            size="large" 
            class="register_btn" 
            plain
            :class="reg_border"
            @focus.native.capture="reg_focuse">快速注册
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
// script方法
export default {
  data(){
    return{
      // 内容初始变量
      msg_phone:"",
      msg_code:"",
      msg_msgcode:"",
      // 焦点初始变量
      phone_border:{outline:false},
      mage_border:{outline:false},
      pawd_border:{outline:false},
      btn_border:{btn_outline:false},
      reg_border:{btn_outline:false},
      active:"msg_login"
    }
  },
  methods:{
    // 手机号栏获取焦点，失去焦点
    phone_focuse(){this.phone_border.outline=true},
    phone_blur(){this.phone_border.outline=false},
    // 图形验证码栏获取焦点，失去焦点
    mage_focuse(){this.mage_border.outline=true},
    mage_blur(){this.mage_border.outline=false},
    // 验证码栏获取焦点，失去焦点
    pawd_focuse(){this.pawd_border.outline=true},
    pawd_blur(){this.pawd_border.outline=false},
    // 登录按钮获取焦点，失去焦点
    btn_focuse(){this.btn_border.btn_outline=true},
    btn_blur(){this.btn_border.btn_outline=false},
    // 注册按钮获取焦点，失去焦点
    reg_focuse(){this.reg_border.btn_outline=true},
    reg_blur(){this.reg_border.btn_outline=false},
    // 点击验证开始
    check(){
      // 获取变量
      let msg_phone = this.msg_phone;
      let msg_phoneReg = /^1[3-7]\d{9}$/;
      // 验证手机号栏内容是否正确,正确可以登录,错误报出错误
      if(msg_phoneReg.test(msg_phone)){

      }else if(this.msg_phone==""){
        alert("手机号不能为空")
        return false
      }else{
        alert("手机号格式错误")
        return false
      }
      // 验证两个验证码栏,正确可以登录,错误报出错误
      if(this.msg_code==""){
        alert("验证码不能为空")
        return false
      }else if(this.msg_msgcode==""){
        alert("短信验证码不能为空")
        return false
      }
    }
  },
  watch:{
    active(choose){
      // 监听切换导航栏
      if(choose == "common_login"){
        this.tab = "common";
        this.$router.push({path:'/login'})
      }else if(choose == "msg_login"){
        this.tab = "msg";
        this.$router.push({path:'/msglogin'})
      }
    }
  },
  // 组件
  components:{
     loginheader,
     loginfooter
   }
}
</script>

