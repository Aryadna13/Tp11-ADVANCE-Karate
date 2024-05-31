function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var config = {
    env: env,
    Token: 'MTc1YTM3NzMtMmM4YS00NmY1LTg4NGQtZWFiYzE1YjE5ZDUx',
    BaseUrl: 'https://api.clockify.me/api'
  }
  if (env == 'dev') {
    // customize
    // e.g. config.foo = 'bar';
  } else if (env == 'e2e') {
    // customize
  }
  return config;


}