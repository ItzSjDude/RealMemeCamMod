.class public final synthetic Lcom/oplus/epona/interceptor/-$$Lambda$CallComponentInterceptor$HaJXnDRGJuYEbcrwzxOpJHODCQM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/oplus/epona/Call$Callback;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;

.field private final synthetic f$1:Lcom/oplus/epona/Request;

.field private final synthetic f$2:Lcom/oplus/epona/Call$Callback;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/oplus/epona/Request;Lcom/oplus/epona/Call$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/epona/interceptor/-$$Lambda$CallComponentInterceptor$HaJXnDRGJuYEbcrwzxOpJHODCQM;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/epona/interceptor/-$$Lambda$CallComponentInterceptor$HaJXnDRGJuYEbcrwzxOpJHODCQM;->f$1:Lcom/oplus/epona/Request;

    iput-object p3, p0, Lcom/oplus/epona/interceptor/-$$Lambda$CallComponentInterceptor$HaJXnDRGJuYEbcrwzxOpJHODCQM;->f$2:Lcom/oplus/epona/Call$Callback;

    return-void
.end method


# virtual methods
.method public final onReceive(Lcom/oplus/epona/Response;)V
    .locals 2

    iget-object v0, p0, Lcom/oplus/epona/interceptor/-$$Lambda$CallComponentInterceptor$HaJXnDRGJuYEbcrwzxOpJHODCQM;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/oplus/epona/interceptor/-$$Lambda$CallComponentInterceptor$HaJXnDRGJuYEbcrwzxOpJHODCQM;->f$1:Lcom/oplus/epona/Request;

    iget-object p0, p0, Lcom/oplus/epona/interceptor/-$$Lambda$CallComponentInterceptor$HaJXnDRGJuYEbcrwzxOpJHODCQM;->f$2:Lcom/oplus/epona/Call$Callback;

    invoke-static {v0, v1, p0, p1}, Lcom/oplus/epona/interceptor/CallComponentInterceptor;->lambda$intercept$0(Ljava/lang/String;Lcom/oplus/epona/Request;Lcom/oplus/epona/Call$Callback;Lcom/oplus/epona/Response;)V

    return-void
.end method
