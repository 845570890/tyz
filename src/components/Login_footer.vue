<template>
   <!-- 尾部组件 -->
   <div>
      <!-- 第三方账号登录 -->
      <div class="other">
         <span>使用第三方帐号登录</span>
      </div>
      <!-- 登录方式 -->
      <div class="other_login">
         <!-- 微博登录 -->
         <router-link to="/" >
            <div class="other_weibo">
               <span></span><br>新浪微博
            </div>
         </router-link>
         <!-- QQ登录 -->
         <router-link to="/" >
            <div class="other_QQ">
               <span></span><br>QQ登录
            </div>  
         </router-link>
      </div>
   </div>
</template>