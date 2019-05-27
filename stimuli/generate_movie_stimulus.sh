
#-----------------------chi version edit-------------------------------
#chinese: black screen for 34 frames before english version.

#1. cover subtitle 
ffmpeg -i forrest_gump_dvd_orig_chinese.mp4 -vf "drawbox=x=0:y=950:w=1920:h=130:color=black:t=max" forrest_gump_dvd_orig_chinese_nosubtitle.mp4

#2. extract video
ffmpeg -i forrest_gump_dvd_orig_chinese_nosubtitle.mp4 -vcodec copy -an forrest_gump_dvd_orig_chinese_nosubtitle_visualonly.mp4

#3. force_fps=25.000 with MP4Box as a part of the gpac package.
MP4Box -single 1 -raw 1 forrest_gump_dvd_orig_chinese_nosubtitle_visualonly.mp4 
MP4Box -add forrest_gump_dvd_orig_chinese_nosubtitle_visualonly_track1.h264:fps=25 -new forrest_gump_dvd_orig_chinese_nosubtitle_visualonly_25fps.mp4

#3.5. copy video from frame 34 to end
melt -profile hd_25p -video-track forrest_gump_dvd_orig_chinese_nosubtitle_visualonly_25fps.mp4 force_fps=25.000 in=34 -consumer avformat:forrest_gump_dvd_orig_chinese_nosubtitle_visualonly_25fps_engidentical.mp4 height=1080 width=1920 quality=8 acodec=libmp3lame ab=256k vcodec=libx264 b=5000k

#4. combile video from frame to frame with audio with melt
#with mix will lead to audio-video unsyncronization.
#------------------------------------------------------------------------
##segment: 0
##frames: 22550
##Duration: 902.0
melt -profile hd_25p -video-track forrest_gump_dvd_orig_chinese_nosubtitle_visualonly_25fps_engidentical.mp4 force_fps=25.000 in=35 out=22585 -audio-track fg_av_seg0_chi.mp4 -consumer avformat:fg_av_seg0_chi_hq.mp4 height=1080 width=1920 quality=8 acodec=libmp3lame ab=256k vcodec=libx264 b=5000k

##segment: 1
##frames: 22052
##Duration: 882.0
melt -profile hd_25p -video-track forrest_gump_dvd_orig_chinese_nosubtitle_visualonly_25fps_engidentical.mp4 force_fps=25.000 in=22185 out=32348 forrest_gump_dvd_orig_chinese_nosubtitle_visualonly_25fps_engidentical.mp4 force_fps=25.000 in=36385 out=48273 -audio-track fg_av_seg1_chi.mp4 -consumer avformat:fg_av_seg1_chi_hq.mp4 height=1080 width=1920 quality=8 acodec=libmp3lame ab=256k vcodec=libx264 b=5000k

##segment: 2
##frames: 21902
##Duration: 876.0
melt -profile hd_25p -video-track forrest_gump_dvd_orig_chinese_nosubtitle_visualonly_25fps_engidentical.mp4 force_fps=25.000 in=47873 out=57835 forrest_gump_dvd_orig_chinese_nosubtitle_visualonly_25fps_engidentical.mp4 force_fps=25.000 in=58507 out=70446 -audio-track fg_av_seg2_chi.mp4 -consumer avformat:fg_av_seg2_chi_hq.mp4 height=1080 width=1920 quality=8 acodec=libmp3lame ab=256k vcodec=libx264 b=5000k

#=============================================================
#segment: 3
#frames: 24168
#Duration: 
melt -profile hd_25p -video-track forrest_gump_dvd_orig_chinese_nosubtitle_visualonly_25fps_engidentical.mp4 force_fps=25.000 in=70046 out=86036 forrest_gump_dvd_orig_chinese_nosubtitle_visualonly_25fps_engidentical.mp4 force_fps=25.000 in=89332 out=97742 -consumer avformat:fg_av_seg3_chi_hq_predelete.mp4 height=1080 width=1920 quality=8 acodec=libmp3lame ab=256k vcodec=libx264 b=5000k

melt -profile hd_25p -video-track fg_av_seg3_chi_hq_predelete.mp4 force_fps=25.000 in=0 out=20560 fg_av_seg3_chi_hq_predelete.mp4 force_fps=25.000 in=20795 -audio-track fg_av_seg3_chi.mp4 -consumer avformat:fg_av_seg3_chi_hq.mp4 height=1080 width=1920 quality=8 acodec=libmp3lame ab=256k vcodec=libx264 b=5000k

#segment: 4
#frames: 18821
#Duration: 
melt -profile hd_25p -video-track forrest_gump_dvd_orig_chinese_nosubtitle_visualonly_25fps_engidentical.mp4 force_fps=25.000 in=97342 out=117391 forrest_gump_dvd_orig_chinese_nosubtitle_visualonly_25fps_engidentical.mp4 force_fps=25.000 in=120656 out=123708 -consumer avformat:fg_av_seg4_chi_hq_predelete.mp4 height=1080 width=1920 quality=8 acodec=libmp3lame ab=256k vcodec=libx264 b=5000k

melt -profile hd_25p -video-track fg_av_seg4_chi_hq_predelete.mp4 force_fps=25.000 in=0 out=8451 fg_av_seg4_chi_hq_predelete.mp4 force_fps=25.000 in=12618 out=20011 fg_av_seg4_chi_hq_predelete.mp4 force_fps=25.000 in=20128 -audio-track fg_av_seg4_chi.mp4 -consumer avformat:fg_av_seg4_chi_hq.mp4 height=1080 width=1920 quality=8 acodec=libmp3lame ab=256k vcodec=libx264 b=5000k

#-----------------------with mama's death-------------------------------
#segment: 5
#frames: 25180
#Duration: 

melt -profile hd_25p -video-track forrest_gump_dvd_orig_chinese_nosubtitle_visualonly_25fps_engidentical.mp4 force_fps=25.000 in=123308 out=149671 -consumer avformat:fg_av_seg5_chi_hq_predelete.mp4 height=1080 width=1920 quality=8 acodec=libmp3lame ab=256k vcodec=libx264 b=5000k

melt -profile hd_25p -video-track fg_av_seg5_chi_hq_predelete.mp4 force_fps=25.000 in=0 out=643 fg_av_seg5_chi_hq_predelete.mp4 force_fps=25.000 in=1828 -audio-track fg_av_seg5_chi.mp4 -consumer avformat:fg_av_seg5_chi_hq.mp4 height=1080 width=1920 quality=8 acodec=libmp3lame ab=256k vcodec=libx264 b=5000k
#==============================================================


#segment: 6
#frames: 27102
#Duration: 1084.0
melt -profile hd_25p -video-track forrest_gump_dvd_orig_chinese_nosubtitle_visualonly_25fps_engidentical.mp4 force_fps=25.000 in=149271 out=152304  forrest_gump_dvd_orig_chinese_nosubtitle_visualonly_25fps_engidentical.mp4 force_fps=25.000 in=154288 out=178356 -audio-track fg_av_seg6_chi.mp4 -consumer avformat:fg_av_seg6_chi_hq.mp4 height=1080 width=1920 quality=8 acodec=libmp3lame ab=256k vcodec=libx264 b=5000k


#segment: 7
#frames: 16876
#Duration: 675.04
melt -profile hd_25p -video-track forrest_gump_dvd_orig_chinese_nosubtitle_visualonly_25fps_engidentical.mp4 force_fps=25.000 in=177956 out=194832 -audio-track fg_av_seg7_chi.mp4 -consumer avformat:fg_av_seg7_chi_hq.mp4 height=1080 width=1920 quality=8 acodec=libmp3lame ab=256k vcodec=libx264 b=5000k

#entire movie cut: chi
melt -profile hd_25p fg_av_seg0_chi_hq.mp4 force_fps=25.000 in=0 out=22350 fg_av_seg1_chi_hq.mp4 force_fps=25.000 in=200 out=21852 fg_av_seg2_chi_hq.mp4 force_fps=25.000 in=200 out=21702 fg_av_seg3_chi_hq.mp4 force_fps=25.000 in=200 out=23968 fg_av_seg4_chi_hq.mp4 force_fps=25.000 in=200 out=18621 fg_av_seg5_chi_hq.mp4 force_fps=25.000 in=200 out=24980 fg_av_seg6_chi_hq.mp4 force_fps=25.000 in=200 out=26902  fg_av_seg7_chi_hq.mp4 force_fps=25.000 in=200 -consumer avformat:fg_av_seg_chi_hq_concat.mp4 height=1080 width=1920 quality=8 acodec=libmp3lame ab=256k vcodec=libx264 b=5000k





melt -profile hd_25p -video-track forrest_gump_dvd_orig_chinese_nosubtitle_visualonly_25fps_engidentical.mp4 force_fps=25.000 in=22185 out=32348 forrest_gump_dvd_orig_chinese_nosubtitle_visualonly_25fps_engidentical.mp4 force_fps=25.000 in=36385 out=48273 forrest_gump_dvd_orig_chinese_nosubtitle_visualonly_25fps_engidentical.mp4 force_fps=25.000 in=22185 out=32348 forrest_gump_dvd_orig_chinese_nosubtitle_visualonly_25fps_engidentical.mp4 force_fps=25.000 in=36385 out=48273 forrest_gump_dvd_orig_chinese_nosubtitle_visualonly_25fps_engidentical.mp4 force_fps=25.000 in=47873 out=57835 forrest_gump_dvd_orig_chinese_nosubtitle_visualonly_25fps_engidentical.mp4 force_fps=25.000 in=58507 out=70446 


forrest_gump_dvd_orig_chinese_nosubtitle_visualonly_25fps_engidentical.mp4 force_fps=25.000 in=149271 out=152304 forrest_gump_dvd_orig_chinese_nosubtitle_visualonly_25fps_engidentical.mp4 force_fps=25.000 in=154288 out=178356 forrest_gump_dvd_orig_chinese_nosubtitle_visualonly_25fps_engidentical.mp4 force_fps=25.000 in=177956 out=194832 \
-audio-track fg_av_seg6_chi.mp4 \
-consumer avformat:fg_av_seg_chi_hq_concat.mp4 height=1080 width=1920 quality=8 acodec=libmp3lame ab=256k vcodec=libx264 b=5000k



#==========================================================================
#convert video from premier into standard format
melt -profile hd_25p /media/xingyu/新加卷/gump_temp/forrest_gump_dvd_chinese_only_25pfs.mp4 force_fps=25.000 -consumer avformat:fg_chi_25pfs.mp4 height=1080 width=1920 quality=8 acodec=libmp3lame ab=256k vcodec=libx264 b=5000k
melt -profile hd_25p /media/xingyu/新加卷/gump_temp/fg_chi_25fps_researchcut_pr.mp4 force_fps=25.000 -consumer avformat:fg_chi_25fps_researchcut.mp4 height=1080 width=1920 quality=8 acodec=libmp3lame ab=256k vcodec=libx264 b=5000k

#===============================chi meg version============================
#segment1
melt -profile hd_25p fg_chi_25fps_researchcut_pr.mp4 force_fps=25.000 in=0 out=22500 -consumer avformat:fg_av_seg1_chi.mp4 width=1024 height=768 quality=8 acodec=libmp3lame ab=256k vcodec=libx264 b=5000k

#segment2
melt -profile hd_25p fg_chi_25fps_researchcut_pr.mp4 force_fps=25.000 in=22400 out=45000 -consumer avformat:fg_av_seg2_chi.mp4 width=1024 height=768 quality=8 acodec=libmp3lame ab=256k vcodec=libx264 b=5000k

#segment3
melt -profile hd_25p fg_chi_25fps_researchcut_pr.mp4 force_fps=25.000 in=44900 out=67500 -consumer avformat:fg_av_seg3_chi.mp4 width=1024 height=768 quality=8 acodec=libmp3lame ab=256k vcodec=libx264 b=5000k

#segment4
melt -profile hd_25p fg_chi_25fps_researchcut_pr.mp4 force_fps=25.000 in=67400 out=90000 -consumer avformat:fg_av_seg4_chi.mp4 width=1024 height=768 quality=8 acodec=libmp3lame ab=256k vcodec=libx264 b=5000k

#segment5
melt -profile hd_25p fg_chi_25fps_researchcut_pr.mp4 force_fps=25.000 in=89900 out=112500 -consumer avformat:fg_av_seg5_chi.mp4 width=1024 height=768 quality=8 acodec=libmp3lame ab=256k vcodec=libx264 b=5000k

#segment6
melt -profile hd_25p fg_chi_25fps_researchcut_pr.mp4 force_fps=25.000 in=112400 out=135000 -consumer avformat:fg_av_seg6_chi.mp4 width=1024 height=768 quality=8 acodec=libmp3lame ab=256k vcodec=libx264 b=5000k

#segment7
melt -profile hd_25p fg_chi_25fps_researchcut_pr.mp4 force_fps=25.000 in=134900 out=157500 -consumer avformat:fg_av_seg7_chi.mp4 width=1024 height=768 quality=8 acodec=libmp3lame ab=256k vcodec=libx264 b=5000k

#segment8
melt -profile hd_25p fg_chi_25fps_researchcut_pr.mp4 force_fps=25.000 in=157400 -consumer avformat:fg_av_seg8_chi.mp4 width=1024 height=768 quality=8 acodec=libmp3lame ab=256k vcodec=libx264 b=5000k











