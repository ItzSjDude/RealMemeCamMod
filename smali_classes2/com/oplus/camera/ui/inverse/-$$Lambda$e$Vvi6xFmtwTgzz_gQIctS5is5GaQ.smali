.class public final synthetic Lcom/oplus/camera/ui/inverse/-$$Lambda$e$Vvi6xFmtwTgzz_gQIctS5is5GaQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/oplus/camera/ui/inverse/f$a;


# instance fields
.field private final synthetic f$0:Landroid/content/Context;

.field private final synthetic f$1:Lcom/oplus/camera/ui/inverse/e$c;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/oplus/camera/ui/inverse/e$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/inverse/-$$Lambda$e$Vvi6xFmtwTgzz_gQIctS5is5GaQ;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/oplus/camera/ui/inverse/-$$Lambda$e$Vvi6xFmtwTgzz_gQIctS5is5GaQ;->f$1:Lcom/oplus/camera/ui/inverse/e$c;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;Lcom/oplus/camera/ui/inverse/c;)Z
    .locals 1

    iget-object v0, p0, Lcom/oplus/camera/ui/inverse/-$$Lambda$e$Vvi6xFmtwTgzz_gQIctS5is5GaQ;->f$0:Landroid/content/Context;

    iget-object p0, p0, Lcom/oplus/camera/ui/inverse/-$$Lambda$e$Vvi6xFmtwTgzz_gQIctS5is5GaQ;->f$1:Lcom/oplus/camera/ui/inverse/e$c;

    invoke-static {v0, p0, p1, p2}, Lcom/oplus/camera/ui/inverse/e;->lambda$withMask$9(Landroid/content/Context;Lcom/oplus/camera/ui/inverse/e$c;Ljava/lang/Object;Lcom/oplus/camera/ui/inverse/c;)Z

    move-result p0

    return p0
.end method
