
import bdog.redis.Redis;



class Test {
  public static function
  main() {

    var c = Redis.newClient();
    c.set("woot","ritchie",function(e,v) {
        trace("setting "+v);
      });
    c.get("woot",function(e,v) {
        trace("cool my name is "+v);
      });

    c.incr("nice",function(e,v) {
        trace("inced is "+v);
      });

    c.incrby("nice",10,function(e,v) {
        trace("incedby is "+v);
      });

    c.decr("nice",function(e,v) {
        trace("decr "+v);
      });

    c.decrby("nice",3,function(e,v) {
        trace("decrby "+v);
      });

    c.mset(["k1","like","k2","i get it"],function(e,v) {
        trace("mset :"+v);
      });

    c.mget(["k1","k2"], function(e,v) {
        trace("mget :"+v[0]+","+v[1]);
      });

    c.append("k2","wootwoot",function(e,v) {
        trace("append length is now "+v);
      });

    c.substr("k2",9,14,function(e,v) {
        trace("substr is "+v);
      });

    c.exists("nice",function(e,v) {
        trace("nice exists? " +v);
      });

    c.keys("k*",function(e,v) {
        for (k in v) trace("key item is "+k);
      });

    c.hmset(["myhash","first","ritchie","last","turner"],function(e,v) {
        trace("hash multi :"+v);
      });

    c.hmget(["myhash","first","last"],function(e,v) {
        for (i in v) trace("hash val:"+i);
        });

  }
}