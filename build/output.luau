local a a={cache={},load=function(b)if not a.cache[b]then a.cache[b]={c=a[b]()}end return a.cache[b].c end}do function a
.a()return nil end function a.b()local b,c,d=a.load'a',game.GetService,cloneref local function e()local f=c(game,
'ReplicatedFirst')return d(f)end local f=e()if not f then warn
'\u{26a0}\u{fe0f} cloneref is not available on your executor! There is a risk of getting detected.'end local function g(
h,i)local j=rawget(h,i)if j then return j end local k=c(game,i)assert(k,string.format("couldn't get service: %s",
tostring(i)))if f then k=d(k)end rawset(h,i,k)return k end local h=setmetatable({},{__index=g})return h end end local b=
a.load'b'local c,d,e,f=b.TemporaryCageMeshProvider,b.MLModelDeliveryService,b.ReplicatedStorage,b.Players print(string.
format('successfully fetched: %s, %s',tostring(e),tostring(f)))print(string.format(
'undefined services also supported: %s, %s',tostring(d),tostring(c)))