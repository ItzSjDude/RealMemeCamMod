.class Lcom/heytap/accessory/BaseJobAgent$InstanceHandler;
.super Landroid/os/Handler;
.source "BaseJobAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/accessory/BaseJobAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InstanceHandler"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 1205
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    const-string v0, "Class instantiation error: "

    .line 1215
    iget v1, p1, Landroid/os/Message;->what:I

    const-string v2, "BaseJobAgent"

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 p0, 0x2

    if-eq v1, p0, :cond_0

    goto/16 :goto_0

    .line 1284
    :cond_0
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/heytap/accessory/BaseJobAgent;

    .line 1285
    invoke-static {}, Lcom/heytap/accessory/BaseJobAgent;->access$900()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p0, :cond_1

    .line 1286
    invoke-static {p0}, Lcom/heytap/accessory/BaseJobAgent;->access$1200(Lcom/heytap/accessory/BaseJobAgent;)V

    return-void

    :cond_1
    const-string p0, "Stale agent entry. Agent already destroyed. Ignoring..."

    .line 1288
    invoke-static {v2, p0}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1217
    :cond_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/heytap/accessory/BaseJobAgent$InstanceCreator;

    .line 1218
    invoke-static {v1}, Lcom/heytap/accessory/BaseJobAgent$InstanceCreator;->a(Lcom/heytap/accessory/BaseJobAgent$InstanceCreator;)Landroid/content/Context;

    move-result-object v4

    .line 1219
    invoke-static {v1}, Lcom/heytap/accessory/BaseJobAgent$InstanceCreator;->b(Lcom/heytap/accessory/BaseJobAgent$InstanceCreator;)Ljava/lang/String;

    move-result-object v5

    .line 1220
    invoke-static {v1}, Lcom/heytap/accessory/BaseJobAgent$InstanceCreator;->c(Lcom/heytap/accessory/BaseJobAgent$InstanceCreator;)Lcom/heytap/accessory/BaseJobAgent$RequestAgentCallback;

    move-result-object v6

    .line 1221
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "CREATE_AGENT: "

    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 1223
    invoke-static {}, Lcom/heytap/accessory/BaseJobAgent;->access$900()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/heytap/accessory/BaseJobAgent;

    const-string v8, "Class could not be initialized: "

    if-eqz v7, :cond_6

    const-string v0, "CREATE_AGENT, but sAgentMap already exist"

    .line 1225
    invoke-static {v2, v0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    invoke-static {v7}, Lcom/heytap/accessory/BaseJobAgent;->access$1000(Lcom/heytap/accessory/BaseJobAgent;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    const/16 p0, 0xa04

    .line 1228
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Error occurred while releasing agent."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v6, p0, p1}, Lcom/heytap/accessory/BaseJobAgent$RequestAgentCallback;->onError(ILjava/lang/String;)V

    return-void

    :cond_3
    add-int/2addr p1, v3

    .line 1231
    invoke-virtual {p0, v3}, Lcom/heytap/accessory/BaseJobAgent$InstanceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1232
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1233
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-wide/16 v1, 0x1f4

    .line 1234
    invoke-virtual {p0, v0, v1, v2}, Lcom/heytap/accessory/BaseJobAgent$InstanceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_4
    if-eqz v6, :cond_5

    .line 1237
    invoke-interface {v6, v7}, Lcom/heytap/accessory/BaseJobAgent$RequestAgentCallback;->onAgentAvailable(Lcom/heytap/accessory/BaseJobAgent;)V

    :cond_5
    return-void

    .line 1241
    :cond_6
    invoke-static {}, Lcom/heytap/accessory/BaseJobAgent;->access$1100()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1242
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "CREATE_AGENT, create it by reflection: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0xa03

    .line 1244
    :try_start_0
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 1245
    new-array v1, v3, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v2, v1, v7

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    .line 1246
    invoke-virtual {p1, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 1247
    new-array v1, v3, [Ljava/lang/Object;

    aput-object v4, v1, v7

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1273
    invoke-static {}, Lcom/heytap/accessory/BaseJobAgent;->access$1100()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1276
    invoke-static {}, Lcom/heytap/accessory/BaseJobAgent;->access$900()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/heytap/accessory/BaseJobAgent;

    if-nez p1, :cond_7

    .line 1278
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Call super inside constructor."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v6, p0, p1}, Lcom/heytap/accessory/BaseJobAgent$RequestAgentCallback;->onError(ILjava/lang/String;)V

    return-void

    :cond_7
    if-eqz v6, :cond_8

    .line 1280
    invoke-interface {v6, p1}, Lcom/heytap/accessory/BaseJobAgent$RequestAgentCallback;->onAgentAvailable(Lcom/heytap/accessory/BaseJobAgent;)V

    :cond_8
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_1

    :catch_0
    move-exception p1

    .line 1269
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    const-string p1, "Exception occurred while calling constructor of class: "

    .line 1270
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v6, p0, p1}, Lcom/heytap/accessory/BaseJobAgent$RequestAgentCallback;->onError(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1273
    invoke-static {}, Lcom/heytap/accessory/BaseJobAgent;->access$1100()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catch_1
    move-exception p1

    .line 1265
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 1266
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Invalid context passed."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v6, p0, p1}, Lcom/heytap/accessory/BaseJobAgent$RequestAgentCallback;->onError(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1273
    invoke-static {}, Lcom/heytap/accessory/BaseJobAgent;->access$1100()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catch_2
    move-exception p1

    .line 1261
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    const-string p1, "Class constructor not accessible: "

    .line 1262
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v6, p0, p1}, Lcom/heytap/accessory/BaseJobAgent$RequestAgentCallback;->onError(ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1273
    invoke-static {}, Lcom/heytap/accessory/BaseJobAgent;->access$1100()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catch_3
    move-exception p1

    .line 1257
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/InstantiationException;->printStackTrace()V

    .line 1258
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v6, p0, p1}, Lcom/heytap/accessory/BaseJobAgent$RequestAgentCallback;->onError(ILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1273
    invoke-static {}, Lcom/heytap/accessory/BaseJobAgent;->access$1100()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catch_4
    move-exception p0

    .line 1253
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    const/16 p0, 0xa02

    const-string p1, "Constructor with Context argument not found: "

    .line 1254
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v6, p0, p1}, Lcom/heytap/accessory/BaseJobAgent$RequestAgentCallback;->onError(ILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1273
    invoke-static {}, Lcom/heytap/accessory/BaseJobAgent;->access$1100()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catch_5
    move-exception p0

    .line 1249
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    const/16 p0, 0xa01

    const-string p1, "Class not found: "

    .line 1250
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v6, p0, p1}, Lcom/heytap/accessory/BaseJobAgent$RequestAgentCallback;->onError(ILjava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1273
    invoke-static {}, Lcom/heytap/accessory/BaseJobAgent;->access$1100()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_1
    invoke-static {}, Lcom/heytap/accessory/BaseJobAgent;->access$1100()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1274
    throw p0
.end method
