.class public final synthetic Lcom/oplus/camera/ui/-$$Lambda$d$SdcDl4DHRNiaUSLeJIvNFfhSG24;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/meicam/sdk/NvsStreamingContext$CompileCallback2;


# instance fields
.field private final synthetic f$0:Lcom/oplus/camera/ui/d;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/camera/ui/d;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/-$$Lambda$d$SdcDl4DHRNiaUSLeJIvNFfhSG24;->f$0:Lcom/oplus/camera/ui/d;

    iput-object p2, p0, Lcom/oplus/camera/ui/-$$Lambda$d$SdcDl4DHRNiaUSLeJIvNFfhSG24;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onCompileCompleted(Lcom/meicam/sdk/NvsTimeline;Z)V
    .locals 1

    iget-object v0, p0, Lcom/oplus/camera/ui/-$$Lambda$d$SdcDl4DHRNiaUSLeJIvNFfhSG24;->f$0:Lcom/oplus/camera/ui/d;

    iget-object p0, p0, Lcom/oplus/camera/ui/-$$Lambda$d$SdcDl4DHRNiaUSLeJIvNFfhSG24;->f$1:Ljava/lang/String;

    invoke-static {v0, p0, p1, p2}, Lcom/oplus/camera/ui/d;->lambda$SdcDl4DHRNiaUSLeJIvNFfhSG24(Lcom/oplus/camera/ui/d;Ljava/lang/String;Lcom/meicam/sdk/NvsTimeline;Z)V

    return-void
.end method
