# serverless-aws-cognito-login

> Simple example project with instructions how to create serverless login using AWS Cognito.

![Overview](https://github.com/TJarriault/auth-Cognito/blob/master/overview.png)

These notes and snippets were created after spending too much time figuring out how to setup serverless authentication using AWS Cognito and Google login. Hope you find it useful!

### Step: Google App

1. Navigate to Google: https://console.developers.google.com
2. Create new app in My Apps
3. Add Google Login in Products
4. Collect Google app id and secret (needed later)
5. Use specificed domain name in Valid OAuth redirect:
  `https://servicex.auth.eu1.west-1.amazoncognito.com/` (the part "servicex" you can name yourself, but it needs to match with the name used in AWS Congnito)

![Overview](https://github.com/TJarriault/auth-Cognito/blob/master/img/google-api.png)

### Step: AWS Cognito

1. Login to AWS and navigate to Cognito service
2. Create user pool in Cognito, say: `servicex`
3. Collect Pool Id (needed later)
4. Define domain in Open App integration > Domain name, say: `servicex`
5. Navigate back to AWS Cognito
6. Enable Google in Google in Federation > Identity providers
7. Create client in App clients (no secret needed)
8. Open App client settings
9. Collect app id (needed later)
10. Enable identity providers
11. Define callback & sign out urls. Example: https://localhost:3000/
12. Select Allowed OAuth Flows: Implicit grant
13. Select Allowed Oauth Scopes: email, openid
14. Create new identity pool in Cognito, say: `servicex`
15. Open user pool and Edit identity pool
16. Collect the identity pool id
17. Create role for unauthenticated and authenticated (see policy examples)
18. Select Authentication providers and set user Pool id and app client id

### Detail of Cognito Configuration :
![Overview](https://github.com/TJarriault/auth-Cognito/blob/master/img/cognito.GIF)
![Overview](https://github.com/TJarriault/auth-Cognito/blob/master/img/cognito-App-Client.GIF)
![Overview](https://github.com/TJarriault/auth-Cognito/blob/master/img/cognito-idp.GIF)
![Overview](https://github.com/TJarriault/auth-Cognito/blob/master/img/cogntio-Identity%20providers.png)
### Step: Frontend App

1. Install Node.js
2. Clone this repository
3. Install dependencies
4. Edit `.env` and set values from above
4. Start app

```sh
git clone https://github.com/juhamust/serverless-aws-cognito-login.git
cd serverless-aws-cognito-login
npm install
# NOTE: place values in .env!
cat .env
npm start
```

