var session = require("express-session");
var redis = require("../config/redisConnect").redis;
var redisStore = require("connect-redis")(session);

module.exports = session({
  store: new redisStore({
    client: redis,
    prefix: ""
  }),
  secret: "lolHQupaD7pzuuVunipqiK8gyQeZLg+ZAOvgA3jzNgpXPeGmWqhSHbFuiXn8OKqN9ldADkf+38KX9NJfqkG9JA", //签名
  name: "JSESSION_ID",
  resave: true, 
  rolling: true, 
  saveUninitialized: false,
  cookie: {
    httpOnly: true,
    maxAge: 60 * 60 * 1000 
  }
});
