<template>
    <div class="forget">
      <!-- 引入头部组件 -->
      <loginheader></loginheader>
        <!-- 报错 -->
        <div class="forget_error" v-show="alert_outime">
            已超时，请重试
        </div>
        <div class="forget_error" v-show="alert_error">
            帐号不合法，请重新输入。
        </div>
        <!-- 手机号 -->
        <mt-field 
          class="forget_phone"
          placeholder="您的邮箱/手机号"
          type="text"
          v-model="phone"
          :attr="{maxlength:11}">
        </mt-field>
        <!-- 立即找回 -->
        <mt-button 
          type="primary" 
          size="large" 
          class="forget_btn"
           @click="check">立即找回
        </mt-button>
        <!-- 提示 -->
      <div class="tips">
        提示：未绑定邮箱或手机，可在“设置-常见问题与反馈”联系管理员找回密码
      </div>
    </div>
</template>

<script>
// 引入头部组件
import loginheader from '../components/Login_header.vue'

export default {
  data(){
    return{
      // 初始变量
      phone:"",
      // 报错的css样式
      alert_outime:false,
      alert_error:false
    }  
  },
  methods:{
    // 单击开始验证
    check(){
      // 获取变量
      let phone=this.phone
      let phoneReg= /^1[3-7]\d{9}$/;
      // 验证手机号格式是否正确,正确可以登录,错误报出错误
      if(phoneReg.test(phone)){
        alert("可以登录")
      }else if(phone==""){
        this.alert_outime=true
        this.alert_error=false
      }else{
        this.alert_error=true
        this.alert_outime=false
      }
    }
  },
  // 组件
  components:{
    loginheader
  }    
}
</script>