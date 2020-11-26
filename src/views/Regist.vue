<template>
  <div>
    <loginheader></loginheader>
    <div class="regist">
      <!-- 昵称 -->
      <mt-field 
        class="regist_name" 
        placeholder="你的名号" 
        type="text" 
        v-model="name" 
        :attr="{maxlength:11}"
        :class="name_border"
        @focus.native.capture="name_focuse"
        @blur.native.capture="name_blur">
      </mt-field>
      <!-- 密码 -->
      <mt-field 
        class="regist_pawd" 
        placeholder="你的密码" 
        type="password" 
        v-model="pawd"
        :attr="{maxlength:15}"
        :class="pawd_border"
        @focus.native.capture="pawd_focuse"
        @blur.native.capture="pawd_blur">
        </mt-field>
        <!-- 短信验证码 -->
        <mt-field 
        class="regist_msg" 
        placeholder="短信验证码" 
        type="text" 
        v-model="msg" 
        :attr="{maxlength:6}"
        :class="msg_border"
        @focus.native.capture="msg_focuse"
        @blur.native.capture="msg_blur">
        <!-- 获取验证码 -->
        <div class="get_code">免费获取验证码</div>
        </mt-field>
    </div>
    <div class="regist">
      <!-- 完成注册按钮 -->
      <mt-button 
        type="primary" 
        size="large" 
        class="regist_btn"
        @click="check">完成注册
      </mt-button>
    </div>
  </div>
</template>

<script>
// 引入头部组件
import loginheader from '../components/Login_header.vue'

export default {
  data(){
    return{
      name:"",
      pawd:"",
      msg:"",
      name_border:{outline:false},
      pawd_border:{outline:false},
      msg_border:{outline:false}
    }
  },
  methods:{
    // 昵称栏获取焦点，失去焦点
    name_focuse(){this.name_border.outline=true},
    name_blur(){this.name_border.outline=false},
    // 密码栏获取焦点，失去焦点
    pawd_focuse(){this.pawd_border.outline=true},
    pawd_blur(){this.pawd_border.outline=false},
    // 短信验证码栏获取焦点，失去焦点
    msg_focuse(){this.msg_border.outline=true},
    msg_blur(){this.msg_border.outline=false},
    // 点击按钮时开始验证
    check(){
      // 获取变量
      let name = this.name
      let pawd = this.pawd
      let msg = this.msg
      let nameReg = /^\w{2,11}$/;
      let pawdReg = /^[0-9A-Za-z\.\-_]{6,15}$/;
      let msgReg = /^\d{6}$/
      let phone=this.$route.query.phone
      //验证昵称栏
      if(nameReg.test(name) && pawdReg.test(pawd) && msgReg.test(msg)){
        this.axios.post('/regist','phone='+phone+'&name='+name+'&pawd='+pawd+'&msg='+msg).then(res=>{
           this.$route.query.phone
      }) 
      }else{
       alert("有错误")
        // this.$router.push({path:'/register'})
      }
    }
  },
  components:{
    loginheader
  }
}
</script>

