.class Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$1;
.super Landroid/os/Handler;
.source "CameraScreenHintView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$1;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage, what: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraScreenHintView"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    .line 211
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$1;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->h(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)V

    goto/16 :goto_1

    .line 207
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$1;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->g(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)V

    goto/16 :goto_1

    .line 203
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$1;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->e()V

    goto/16 :goto_1

    .line 199
    :cond_3
    iget-object p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$1;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->a(Z)V

    goto/16 :goto_1

    .line 149
    :cond_4
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$1;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    monitor-enter p1

    .line 150
    :try_start_0
    iget-object v2, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$1;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {v2}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->a(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Ljava/util/List;

    move-result-object v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$1;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {v2}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->a(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 151
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$1;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {v0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->a(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_5

    .line 152
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$1;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    iget-object v1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$1;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {v1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->a(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "TEXT_BG_COLOR"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$1;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    .line 153
    invoke-static {v2}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->a(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "TEXT_COLOR"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 152
    invoke-static {v0, v1, v2}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->a(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;II)V

    .line 154
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$1;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {v0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/f;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$1;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {v1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->a(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "TEXT"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/f;->a(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$1;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {v0, v5}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->a(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;I)V

    .line 156
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$1;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {v0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/f;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/oplus/camera/ui/f;->a(F)V

    .line 157
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$1;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {v0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->c(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;

    move-result-object v0

    invoke-virtual {v0, v5, v5}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a(II)V

    goto/16 :goto_0

    .line 159
    :cond_5
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$1;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {v0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->d(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 160
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$1;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    const v2, 0x7f0805e9

    const v6, 0x7f0604ff

    invoke-static {v0, v2, v6}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->a(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;II)V

    .line 161
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$1;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {v0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->e(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/oplus/camera/ui/RotateImageView;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$1;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {v0, v3, v1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->a(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;IZ)V

    .line 163
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$1;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {v0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->e(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/oplus/camera/ui/RotateImageView;->setAlpha(F)V

    .line 165
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$1;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {v0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/f;->b()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$1;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100473

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 166
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$1;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {v0, v5}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->a(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;Z)Z

    .line 169
    :cond_6
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$1;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {v0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->c(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;

    move-result-object v0

    invoke-virtual {v0, v1, v5}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a(II)V

    goto/16 :goto_0

    .line 171
    :cond_7
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$1;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    iget-object v1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$1;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {v1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->a(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "TEXT_BG_COLOR"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$1;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    .line 172
    invoke-static {v2}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->a(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "TEXT_COLOR"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 171
    invoke-static {v0, v1, v2}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->a(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;II)V

    .line 173
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$1;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {v0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/f;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$1;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {v1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->a(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "TEXT"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/f;->a(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$1;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {v0, v5}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->a(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;I)V

    .line 175
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$1;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {v0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/f;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/oplus/camera/ui/f;->a(F)V

    .line 176
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$1;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {v0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->c(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;

    move-result-object v0

    invoke-virtual {v0, v5, v5}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a(II)V

    goto :goto_0

    .line 180
    :cond_8
    iget-object v2, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$1;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {v2}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->d(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 181
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$1;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {v0, v3, v1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->a(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;IZ)V

    .line 183
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$1;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {v0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->e(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/RotateImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$1;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {v0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->e(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/RotateImageView;->getAlpha()F

    move-result v0

    cmpl-float v0, v4, v0

    if-nez v0, :cond_b

    .line 184
    :cond_9
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$1;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {v0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->e(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/oplus/camera/ui/RotateImageView;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$1;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {v0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->e(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/oplus/camera/ui/RotateImageView;->setAlpha(F)V

    .line 186
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$1;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {v0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->c(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;

    move-result-object v0

    invoke-virtual {v0, v1, v5}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a(II)V

    goto :goto_0

    .line 188
    :cond_a
    iget-object v1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$1;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {v1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/ui/f;->d()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 189
    iget-object v1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$1;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {v1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->c(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;

    move-result-object v1

    invoke-virtual {v1, v0, v5}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a(II)V

    .line 192
    :cond_b
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$1;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->f(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)V

    .line 195
    iget-object p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$1;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->e()V

    :goto_1
    return-void

    :catchall_0
    move-exception p0

    .line 192
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
