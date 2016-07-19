



## 参考工具

- [m3u8-segmenter : github](https://github.com/johnf/m3u8-segmenter)
- [m3u8-segmenter 官方文档](http://m3u8-segmenter.inodes.org/)


## ffmpeg 参数



```
基本选项:
-formats	            输出所有可用格式
-f fmt	                指定格式(音频或视频格式)
-i filename	            指定输入文件名，在linux下当然也能指定:0.0(屏幕录制)或摄像头
-y	                    覆盖已有文件
-t duration	            记录时长为t
-fs limit_size	        设置文件大小上限
-ss time_off	        从指定的时间(s)开始， [-]hh:mm:ss[.xxx]的格式也支持
-itsoffset time_off	    设置时间偏移(s)，该选项影响所有后面的输入文件。该偏移被加到输入文件的时戳，定义一个正偏移意味着相应的流被延迟了 offset秒。 [-]hh:mm:ss[.xxx]的格式也支持
-title string	        标题
-timestamp time	        时间戳
-author string	        作者
-copyright string	    版权信息
-comment string	        评论
-album string	        album名
-v verbose	            与log相关的
-target type	        设置目标文件类型("vcd", "svcd", "dvd", "dv", "dv50", "pal-vcd", "ntsc-svcd", ...)
-dframes number	        设置要记录的帧数



视频选项:
-b	                指定比特率(bits/s)，似乎ffmpeg是自动VBR的，指定了就大概是平均比特率
-vb	                指定视频比特率(bits/s)
-vframes number	    设置转换多少桢(frame)的视频
-r rate	            桢速率(fps)
-s size	            分辨率
-aspect aspect	    设置视频长宽比(4:3, 16:9 or 1.3333, 1.7777)
-croptop size	    设置顶部切除尺寸(in pixels)
-cropbottom size	设置底部切除尺寸(in pixels)
-cropleft size	    设置左切除尺寸 (in pixels)
-cropright size	    设置右切除尺寸 (in pixels)
-padtop size	    设置顶部补齐尺寸(in pixels)
-padbottom size	    底补齐(in pixels)
-padleft size	    左补齐(in pixels)
-padright size	    右补齐(in pixels)
-padcolor color	    补齐带颜色(000000-FFFFFF)
-vn	                取消视频
-vcodec codec       强制使用codec编解码方式('copy' to copy stream)
-sameq              使用同样视频质量作为源（VBR）
-pass n             选择处理遍数（1或者2）。两遍编码非常有用。第一遍生成统计信息，第二遍生成精确的请求的码率
-passlogfile file	选择两遍的纪录文件名为file
-newvideo	        在现在的视频流后面加入新的视频流





高级视频选项
-pix_fmt format	set pixel format, 'list' as argument shows all the pixel formats supported
-intra	        仅适用帧内编码
-qscale q	    以<数值>质量为基础的VBR，取值0.01-255，约小质量越好
-loop_input	    设置输入流的循环数(目前只对图像有效)
-loop_output	设置输出视频的循环数，比如输出gif时设为0表示无限循环
-g int	        设置图像组大小
-cutoff int	    设置截止频率
-qmin int	    设定最小质量
-qmax int	    设定最大质量
-qdiff int	    量化标度间最大偏差 (VBR)
-bf int	        使用frames B 帧，支持mpeg1,mpeg2,mpeg4



音频选项:
-ab	                设置比特率(单位：bit/s，也许老版是kb/s)
-aframes number	    设置转换多少桢(frame)的音频
-aq quality	        设置音频质量 (指定编码)
-ar rate	        设置音频采样率 (单位：Hz)
-ac channels  	    设置声道数
-an	                取消音频
-acodec codec	    指定音频编码('copy' to copy stream)
-vol volume	        设置录制音量大小(默认为256)
-newaudio	        在现在的音频流后面加入新的音频流




字幕选项:
-sn	            取消字幕
-scodec codec	设置字幕编码('copy' to copy stream)
-newsubtitle	在当前字幕后新增
-slang code	    设置字幕所用的ISO 639编码(3个字母)
Audio/Video     抓取选项:
-vc channel	    设置视频捕获通道(只对DV1394)
-tvstd standard	设置电视标准 NTSC PAL(SECAM)



```






##  ffmpeg 常用命令格式

- [FFmpeg实用命令 ](http://davidaq.com/tutorial/2014/11/20/ffmpeg-commands.html)
- [用ffmpeg 把mp4文件转为ts文件并生成m3u8列表](http://blog.csdn.net/jookers/article/details/21694957)
- [生成 m3u8 - 视频切片方案](http://site.douban.com/180891/widget/notes/17846704/note/445146910/)

## 生成 m3u8 文件

```

ffmpeg -i input.mp4 -c:v libx264 -c:a aac -strict -2 -f hls output.m3u8

```

##  m3u8-segmenter 切割 ts 文件

```
直接转成ts
ffmpeg -i vp5.flv -acodec copy -vcodec libx264 vp5.ts

分割转成ts 一秒为单位
ffmpeg -ss 0 -t 30 -i vp5.flv -acodec copy -vcodec libx264 1.ts
ffmpeg -ss 30 -t 60 -i vp5.flv -acodec copy -vcodec libx264 2.ts

合并
ffmpeg -i "concat:1.ts|2.ts" -acodec copy -vcodec copy -absf aac_adtstoasc output.mp4

切割
m3u8-segmenter -i test.ts -d 10 -p segmenter_test -m test.m3u8 -u http://127.0.0.1:8080/Video/

```



## 音乐有损压缩


```
ffmpeg -i input.mp3 -ac 1 -ar 32k -bit_rate:a 128k output.mp3


上面命令做了三件事情： 
- -ac 1 指定只保留一个声道，所有声道都融合成一个（这里有个FFmpeg的bug，输出音量会变小）。 

- -ar 32k 表示采样率改为32000，通常的高保真音频都是48K左右，这个数值变小，会裁剪掉高音部分，
    32K会裁掉不少高音，不过普通人如果没个对比，听不出什么问题。
    如果音频文件不是音乐，而是人声内容（比如广播），则可以打手一挥设置成22k或16k（电话是16k） 

- -bit_rate:a 128k设置的时音频比特率，如果是-bit_rate:v就成了视频比特率，128K表示，
    输出文件大概每秒钟的内容会有16KB左右的文件大小，
    需要至少128kbps的网络才能流畅播放 128K算是比较理想的比特率，文件小，音频质量损失又不是特别明显（对于普通人）


```



## 切割


```

ffmpeg -i test.mp4 -flags -global_header -f segment -segment_time 1 -segment_list ts/playlist.m3u8 -segment_list_type m3u8 -segment_format mpegts -map 0 -bsf h264_mp4toannexb -vcodec copy -acodec copy -y ts/media%05d.ts


ffmpeg -i test.mp4 -flags -global_header -f segment -segment_time 1 -segment_list ./playlist.m3u8 -segment_list_type m3u8 -segment_format mpegts -map 0 -bsf h264_mp4toannexb -vcodec copy -acodec copy -y ./media%05d.ts


ffmpeg -i  01.mp3   -flags -global_header -f segment -segment_time 10 -segment_list ./playlist.m3u8 -segment_list_type m3u8 -segment_format mpegts -map 0 -bsf h264_mp4toannexb -vcodec copy -acodec copy -y ./media%05d.ts


```
