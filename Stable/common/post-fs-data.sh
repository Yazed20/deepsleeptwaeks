#!/system/bin/sh

####################################
# Disable shit
####################################
resetprop -n av.debug.disable.pers.cache true
resetprop -n config.disable_rtt true
resetprop -n config.stats 0
resetprop -n db.log.slow_query_threshold 0
resetprop -n debug.atrace.tags.enableflags false
resetprop -n debug.egl.profiler 0
resetprop -n debug.enable.gamed false
resetprop -n debug.enable.wl_log false
resetprop -n debug.hwc.otf 0
resetprop -n debug.hwc_dump_en 0
resetprop -n debug.mdpcomp.logs 0
resetprop -n debug.qualcomm.sns.daemon 0
resetprop -n debug.qualcomm.sns.libsensor1 0
resetprop -n debug.sf.ddms 0
resetprop -n debug.sf.disable_client_composition_cache 1
resetprop -n debug.sf.dump 0
resetprop -n debug.sqlite.journalmode false
resetprop -n debug_test 0
resetprop -n libc.debug.malloc 0
resetprop -n log.shaders 0
resetprop -n log.tag.all 0
resetprop -n log.tag.stats_log 0
resetprop -n log_ao 0
resetprop -n log_frame_info 0
resetprop -n logd.logpersistd.enable false
resetprop -n logd.statistics 0
resetprop -n media.metrics.enabled false
resetprop -n media.metrics 0
resetprop -n media.stagefright.log-uri 0
resetprop -n net.ipv4.tcp_no_metrics_save 1
resetprop -n persist.anr.dumpthr 0
resetprop -n persist.camera.debug.logfile 0
resetprop -n persist.camera.iface.logs 0
resetprop -n persist.camera.imglib.logs 0
resetprop -n persist.camera.isp.debug 0
resetprop -n persist.camera.mct.debug 0
resetprop -n persist.camera.sensor.debug 0
resetprop -n persist.data.qmi.adb_logmask 0
resetprop -n persist.debug.sensors.hal 0 
resetprop -n persist.debug.wfd.enable false
resetprop -n persist.ims.disableADBLogs true
resetprop -n persist.ims.disabled true
resetprop -n persist.ims.disableDebugLogs true
resetprop -n persist.ims.disableIMSLogs true
resetprop -n persist.ims.disableQXDMLogs true
resetprop -n persist.logd.size.crash 0
resetprop -n persist.logd.size.radio 0
resetprop -n persist.logd.size.system 0
resetprop -n persist.logd.size 0
resetprop -n persist.mm.enable.prefetch false
resetprop -n persist.oem.dump 0
resetprop -n persist.radio.NO_STAPA 1
resetprop -n persist.radio.oem_socket false
resetprop -n persist.service.logd.enable false
resetprop -n persist.sys.perf.debug false
resetprop -n persist.sys.ssr.enable_debug false
resetprop -n persist.sys.ssr.restart_level 1
resetprop -n persist.sys.strictmode.disable true
resetprop -n persist.sys.wfd.virtual 0
resetprop -n persist.sys.whetstone.level 0
resetprop -n persist.traced.enable false
resetprop -n persist.traced_perf.enable false
resetprop -n persist.vendor.crash.cnt 0
resetprop -n persist.vendor.crash.detect false
resetprop -n persist.vendor.ims.dropset_feature 1
resetprop -n persist.vendor.radio.adb_log_on 0
resetprop -n persist.vendor.radio.snapshot_enabled false
resetprop -n persist.vendor.radio.snapshot_timer 0
resetprop -n persist.vendor.sys.modem.logging.enable false
resetprop -n persist.vendor.verbose_logging_enabled false
resetprop -n ro.com.google.locationfeatures 0
resetprop -n ro.config.dmverity false
resetprop -n ro.config.ksm.support false
resetprop -n ro.config.nocheckin 1
resetprop -n ro.debuggable 0
resetprop -n ro.kernel.android.checkjni 0
resetprop -n ro.kernel.qemu.gles 0
resetprop -n ro.logd.kernel false
resetprop -n ro.logd.size.stats 0
resetprop -n ro.logd.size 0
resetprop -n ro.logdumpd.enabled false
resetprop -n ro.statsd.enable false
resetprop -n ro.telephony.call_ring.multiple false
resetprop -n ro.vendor.connsys.dedicated.log 0
resetprop -n rw.logger 0
resetprop -n sdm.debug.disable_inline_rotator true
resetprop -n sdm.debug.disable_skip_validate true
resetprop -n sys.miui.ndcd false
resetprop -n sys.wifitracing.started 0
resetprop -n vendor.fm.a2dp.conc.disabled true
resetprop -n vendor.vidc.debug.level 0
resetprop -n vendor.vidc.enc.disable_bframes true
resetprop -n vidc.debug.level 0
resetprop -n video.disable.ubwc true

####################################
# Dalvik
####################################
resetprop -n dalvik.gc.type precise
resetprop -n dalvik.vm.check-dex-sum false
resetprop -n dalvik.vm.checkjni false
resetprop -n dalvik.vm.dex2oat64.enabled true
resetprop -n dalvik.vm.dex2oat-minidebuginfo false
resetprop -n dalvik.vm.minidebuginfo false
resetprop -n dalvik.vm.verify-bytecode false



