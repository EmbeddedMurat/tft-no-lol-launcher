# TFT without the LoL download

[English](#english) · [Türkçe](#türkçe)

## English

This Windows launcher opens an **already installed copy of Teamfight Tactics** through Riot Client while disabling patching for that client session. It lets you try starting TFT when the Riot Client is waiting for the rest of the League of Legends download. The original author reports testing this workaround with TFT 18.6 on Windows 11 in the TR region; it has not been independently verified by this repository packaging process. It depends on Riot continuing to recognize the launch flag.

**Important:** This is a launch workaround, **not a League of Legends uninstaller**. It does not delete LoL files or permanently prevent Riot Client from downloading them. Game updates may require regular client startup. Not affiliated with Riot Games.

### Use it

1. Make sure TFT's own game files are installed through Riot Client. For a first-time install, start the TFT download in Riot Client. If both games share one download queue, wait for TFT's own files to finish, then pause the shared queue. On the tested version, Riot writes `%ProgramData%\Riot Games\Metadata\teamfighttactics.live\teamfighttactics.live.ok` when the TFT patch completes.
2. Right-click the **Riot Client** icon in the Windows system tray and choose **Exit**. The icon may be behind the **^** arrow.
3. Download and run **Launch TFT.cmd**, then click **Play** in Riot Client.

If TFT needs a patch, exit Riot Client and open it normally to update. Normal startup may resume the shared download. The launcher only reads Riot's install location and starts the existing Riot Client with the arguments below. Your existing Vanguard and Riot sign-in requirements still apply.

### Launch manually

If the launcher cannot find Riot Client, run the following in Command Prompt with Riot Client fully closed. Replace the executable path with your own if you installed Riot Client elsewhere.

```cmd
"C:\Riot Games\Riot Client\RiotClientServices.exe" --launch-product=teamfighttactics --launch-patchline=live --disable-patching
```

## Türkçe

Bu Windows başlatıcısı, **dosyaları zaten kurulu olan Teamfight Tactics’i** Riot Client üzerinden açar ve o oturumdaki güncellemeleri durdurur. Riot Client, League of Legends indirmesinin bitmesini beklerken TFT’yi açmayı deneyebilirsin. Geliştiricinin bildirdiğine göre yöntem Windows 11’de, TR bölgesinde TFT 18.6 ile test edildi; bu paket hazırlanırken bağımsız olarak yeniden doğrulanmadı. Riot başlatma seçeneğini kaldırırsa yöntem çalışmayabilir.

**Önemli:** Bu, oyunu açmaya yönelik bir geçici çözümdür; **League of Legends kaldırma aracı değildir**. LoL dosyalarını silmez ve Riot Client’ın ileride LoL indirmesini kalıcı olarak engellemez. Güncellemeler için istemciyi normal açman gerekebilir. Riot Games ile bağlantılı değildir.

### Kullanım

1. TFT’nin kendi oyun dosyalarının Riot Client üzerinden kurulmuş olması gerekiyor. İlk kez kuruyorsan Riot Client’ta TFT indirmesini başlat. İki oyun aynı kuyruktaysa TFT’nin kendi dosyaları tamamlanınca ortak indirmeyi duraklat. Test edilen sürümde Riot, TFT yaması tamamlandığında `%ProgramData%\Riot Games\Metadata\teamfighttactics.live\teamfighttactics.live.ok` dosyasını oluşturuyor.
2. Windows’ta sağ alttaki **Riot Client** simgesine sağ tıkla ve **Çıkış**’ı seç. Simge **^** okunun altında olabilir.
3. **Launch TFT.cmd** dosyasını indirip çift tıkla ve Riot Client’ta **Oyna**’ya bas.

TFT’ye yama gerektiğinde Riot Client’tan çıkıp istemciyi normal şekilde aç. Normal açılış ortak indirmeyi sürdürebilir. Başlatıcı, Riot Client’ın kurulum yolunu okur ve kurulu istemciyi yukarıdaki seçeneklerle açar. Mevcut Vanguard ve Riot hesabıyla giriş gereksinimleri geçerlidir.

### Elle başlatma

Başlatıcı Riot Client’ı bulamazsa istemciyi tamamen kapat ve yukarıdaki komutu Komut İstemi’nde çalıştır. Riot Client başka bir konumdaysa komuttaki dosya yolunu kendi kurulum yolunla değiştir.

[TFT 18.6 patch notes](https://teamfighttactics.leagueoflegends.com/en-us/news/game-updates/teamfight-tactics-patch-18-6/) · [Riot Client FAQ](https://support.riotgames.com/en-us/riot/client/riot-client-faq)
