.class public final synthetic Lcom/oplus/epona/-$$Lambda$Route$TQYa_q1SoJ805NkwE96O-tUT0sw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;

.field private final synthetic f$1:Ljava/lang/Boolean;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/epona/-$$Lambda$Route$TQYa_q1SoJ805NkwE96O-tUT0sw;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/epona/-$$Lambda$Route$TQYa_q1SoJ805NkwE96O-tUT0sw;->f$1:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/oplus/epona/-$$Lambda$Route$TQYa_q1SoJ805NkwE96O-tUT0sw;->f$0:Ljava/lang/String;

    iget-object p0, p0, Lcom/oplus/epona/-$$Lambda$Route$TQYa_q1SoJ805NkwE96O-tUT0sw;->f$1:Ljava/lang/Boolean;

    invoke-static {v0, p0, p1}, Lcom/oplus/epona/Route;->lambda$createThreadFactory$0(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method
