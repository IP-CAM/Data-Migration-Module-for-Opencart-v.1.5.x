<div id="migration-page">
    <div class="page-header">
        <div class="current-title title">Migration</div>
        <div class="redirect-icon"><a href="<?php echo $setting_url; ?>" title="Setting"><span class="icon-setting"></span></a></div>
    </div>
    <?php echo $html_content; ?>
</div>
<script type="text/javascript">
    $(document).ready(function(){
        $.MigrationData({
            <?php echo $js_config; ?>
            url: '<?php echo $process_url; ?>',
            request_post: {
                action_type: 'import'
            },
            request_download: {
                action_type: 'download'
            }
    });
    });
</script>