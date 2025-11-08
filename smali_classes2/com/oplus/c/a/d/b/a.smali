.class public abstract Lcom/oplus/c/a/d/b/a;
.super Ljava/lang/Object;
.source "BaseLightVideoPlayer.kt"

# interfaces
.implements Lcom/oplus/c/a/d/b/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/c/a/d/b/a$a;
    }
.end annotation


# static fields
.field public static final c:Lcom/oplus/c/a/d/b/a$a;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field public a:Landroid/net/Uri;

.field public b:Landroid/view/Surface;

.field private d:Lcom/oplus/c/a/d/b/b$a;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oplus/c/a/d/b/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/c/a/d/b/a$a;-><init>(Lc/f/b/f;)V

    sput-object v0, Lcom/oplus/c/a/d/b/a;->c:Lcom/oplus/c/a/d/b/a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Ljava/lang/String;)V
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",  "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "isPauseState = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-boolean p1, p0, Lcom/oplus/c/a/d/b/a;->e:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "isStopState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-boolean v1, p0, Lcom/oplus/c/a/d/b/a;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "isPlayingState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget-boolean v1, p0, Lcom/oplus/c/a/d/b/a;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "isCompleteState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    iget-boolean v1, p0, Lcom/oplus/c/a/d/b/a;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "isErrorState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget-boolean v1, p0, Lcom/oplus/c/a/d/b/a;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "uri = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    move-object p1, p0

    check-cast p1, Lcom/oplus/c/a/d/b/a;

    iget-object p1, p1, Lcom/oplus/c/a/d/b/a;->a:Landroid/net/Uri;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/oplus/c/a/d/b/a;->a:Landroid/net/Uri;

    if-nez p0, :cond_1

    const-string p1, "uri"

    invoke-static {p1}, Lc/f/b/h;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "unInit"

    :cond_1
    :goto_0
    check-cast p0, Ljava/lang/Comparable;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BaseLightVideoPlayer"

    .line 48
    invoke-static {p1, p0}, Lcom/oplus/c/a/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lc/f/b/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lcom/oplus/c/a/d/b/a;->a:Landroid/net/Uri;

    return-void
.end method

.method public final a(Landroid/view/Surface;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lc/f/b/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lcom/oplus/c/a/d/b/a;->b:Landroid/view/Surface;

    return-void
.end method

.method public final a(Lcom/oplus/c/a/d/b/b$a;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/oplus/c/a/d/b/a;->d:Lcom/oplus/c/a/d/b/b$a;

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/oplus/c/a/d/b/a;->e:Z

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/oplus/c/a/d/b/a;->f:Z

    .line 41
    iput-boolean v0, p0, Lcom/oplus/c/a/d/b/a;->g:Z

    .line 42
    iput-boolean v0, p0, Lcom/oplus/c/a/d/b/a;->h:Z

    .line 43
    iput-boolean v0, p0, Lcom/oplus/c/a/d/b/a;->i:Z

    const-string v0, "pause"

    .line 44
    invoke-direct {p0, v0}, Lcom/oplus/c/a/d/b/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 0

    .line 79
    invoke-virtual {p0}, Lcom/oplus/c/a/d/b/a;->h()V

    return-void
.end method

.method public e()Z
    .locals 0

    .line 83
    iget-boolean p0, p0, Lcom/oplus/c/a/d/b/a;->g:Z

    return p0
.end method

.method public f()V
    .locals 3

    .line 104
    invoke-virtual {p0}, Lcom/oplus/c/a/d/b/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/oplus/c/a/d/b/a;->a()V

    .line 106
    invoke-virtual {p0}, Lcom/oplus/c/a/d/b/a;->n()V

    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/c/a/d/b/a;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    invoke-virtual {p0}, Lcom/oplus/c/a/d/b/a;->i()V

    .line 110
    invoke-virtual {p0}, Lcom/oplus/c/a/d/b/a;->b()V

    .line 111
    invoke-virtual {p0}, Lcom/oplus/c/a/d/b/a;->a()V

    .line 112
    invoke-virtual {p0}, Lcom/oplus/c/a/d/b/a;->n()V

    goto :goto_0

    .line 115
    :cond_1
    move-object v0, p0

    check-cast v0, Lcom/oplus/c/a/d/b/a;

    iget-object v1, v0, Lcom/oplus/c/a/d/b/a;->a:Landroid/net/Uri;

    if-eqz v1, :cond_4

    iget-object v0, v0, Lcom/oplus/c/a/d/b/a;->b:Landroid/view/Surface;

    if-eqz v0, :cond_4

    .line 116
    iget-object v0, p0, Lcom/oplus/c/a/d/b/a;->a:Landroid/net/Uri;

    if-nez v0, :cond_2

    const-string v1, "uri"

    invoke-static {v1}, Lc/f/b/h;->b(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/oplus/c/a/d/b/a;->b:Landroid/view/Surface;

    if-nez v1, :cond_3

    const-string v2, "surfaceView"

    invoke-static {v2}, Lc/f/b/h;->b(Ljava/lang/String;)V

    :cond_3
    iget-object v2, p0, Lcom/oplus/c/a/d/b/a;->d:Lcom/oplus/c/a/d/b/b$a;

    invoke-virtual {p0, v0, v1, v2}, Lcom/oplus/c/a/d/b/a;->a(Landroid/net/Uri;Landroid/view/Surface;Lcom/oplus/c/a/d/b/b$a;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final g()Landroid/net/Uri;
    .locals 1

    .line 27
    iget-object p0, p0, Lcom/oplus/c/a/d/b/a;->a:Landroid/net/Uri;

    if-nez p0, :cond_0

    const-string v0, "uri"

    invoke-static {v0}, Lc/f/b/h;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public h()V
    .locals 2

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/oplus/c/a/d/b/a;->e:Z

    const/4 v1, 0x1

    .line 62
    iput-boolean v1, p0, Lcom/oplus/c/a/d/b/a;->f:Z

    .line 63
    iput-boolean v0, p0, Lcom/oplus/c/a/d/b/a;->g:Z

    .line 64
    iput-boolean v0, p0, Lcom/oplus/c/a/d/b/a;->h:Z

    .line 65
    iput-boolean v0, p0, Lcom/oplus/c/a/d/b/a;->i:Z

    const-string v0, "stop"

    .line 66
    invoke-direct {p0, v0}, Lcom/oplus/c/a/d/b/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/oplus/c/a/d/b/a;->e:Z

    .line 71
    iput-boolean v0, p0, Lcom/oplus/c/a/d/b/a;->f:Z

    .line 72
    iput-boolean v0, p0, Lcom/oplus/c/a/d/b/a;->g:Z

    .line 73
    iput-boolean v0, p0, Lcom/oplus/c/a/d/b/a;->h:Z

    .line 74
    iput-boolean v0, p0, Lcom/oplus/c/a/d/b/a;->i:Z

    const-string v0, "reset"

    .line 75
    invoke-direct {p0, v0}, Lcom/oplus/c/a/d/b/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public j()Z
    .locals 0

    .line 87
    iget-boolean p0, p0, Lcom/oplus/c/a/d/b/a;->e:Z

    return p0
.end method

.method public k()Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Lcom/oplus/c/a/d/b/a;->h:Z

    return p0
.end method

.method protected final l()V
    .locals 1

    const/4 v0, 0x1

    .line 123
    iput-boolean v0, p0, Lcom/oplus/c/a/d/b/a;->e:Z

    const/4 v0, 0x0

    .line 124
    iput-boolean v0, p0, Lcom/oplus/c/a/d/b/a;->f:Z

    .line 125
    iput-boolean v0, p0, Lcom/oplus/c/a/d/b/a;->g:Z

    .line 126
    iput-boolean v0, p0, Lcom/oplus/c/a/d/b/a;->h:Z

    .line 127
    iput-boolean v0, p0, Lcom/oplus/c/a/d/b/a;->i:Z

    const-string v0, "setCompletionStatus"

    .line 128
    invoke-direct {p0, v0}, Lcom/oplus/c/a/d/b/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected final m()V
    .locals 2

    const/4 v0, 0x0

    .line 132
    iput-boolean v0, p0, Lcom/oplus/c/a/d/b/a;->e:Z

    .line 133
    iput-boolean v0, p0, Lcom/oplus/c/a/d/b/a;->f:Z

    .line 134
    iput-boolean v0, p0, Lcom/oplus/c/a/d/b/a;->g:Z

    const/4 v1, 0x1

    .line 135
    iput-boolean v1, p0, Lcom/oplus/c/a/d/b/a;->h:Z

    .line 136
    iput-boolean v0, p0, Lcom/oplus/c/a/d/b/a;->i:Z

    const-string v0, "setCompletionStatus"

    .line 137
    invoke-direct {p0, v0}, Lcom/oplus/c/a/d/b/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected final n()V
    .locals 2

    const/4 v0, 0x0

    .line 141
    iput-boolean v0, p0, Lcom/oplus/c/a/d/b/a;->e:Z

    .line 142
    iput-boolean v0, p0, Lcom/oplus/c/a/d/b/a;->f:Z

    const/4 v1, 0x1

    .line 143
    iput-boolean v1, p0, Lcom/oplus/c/a/d/b/a;->g:Z

    .line 144
    iput-boolean v0, p0, Lcom/oplus/c/a/d/b/a;->h:Z

    .line 145
    iput-boolean v0, p0, Lcom/oplus/c/a/d/b/a;->i:Z

    const-string v0, "setPlayingStatus"

    .line 146
    invoke-direct {p0, v0}, Lcom/oplus/c/a/d/b/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected final o()V
    .locals 1

    const/4 v0, 0x0

    .line 150
    iput-boolean v0, p0, Lcom/oplus/c/a/d/b/a;->e:Z

    .line 151
    iput-boolean v0, p0, Lcom/oplus/c/a/d/b/a;->f:Z

    .line 152
    iput-boolean v0, p0, Lcom/oplus/c/a/d/b/a;->g:Z

    .line 153
    iput-boolean v0, p0, Lcom/oplus/c/a/d/b/a;->h:Z

    const/4 v0, 0x1

    .line 154
    iput-boolean v0, p0, Lcom/oplus/c/a/d/b/a;->i:Z

    const-string v0, "setErrorStatus"

    .line 156
    invoke-direct {p0, v0}, Lcom/oplus/c/a/d/b/a;->a(Ljava/lang/String;)V

    return-void
.end method
