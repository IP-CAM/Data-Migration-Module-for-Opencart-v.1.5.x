<div id="migration-page">
    <div class="page-header">
        <div class="current-title title">Install</div>
    </div>

    <form id="module_form" class="defaultForm  form-horizontal" action="<?php echo $form_url; ?>" method="POST" enctype="application/x-www-form-urlencoded">
        <div class="migration-content">
            <div id="loading" class="backdrop">
                <span class="icon-loading"></span>
            </div>

            <?php if($messages){ ?>
            <div style="margin-bottom: 20px;">
                <?php foreach($messages as $message){ ?>
                <div class="alert-box <?php echo $message['type']; ?>"><?php echo $message['message']; ?></div>
                <?php } ?>
            </div>
            <?php } ?>

            <div id="install-wrap" class="wrap-box">

                <div class="box-content">

                    <div class="form-group width50" style="margin: 0 auto;">
                        <div style="width: 20%;float: left;">License</div>
                        <div style="width: 80%;float:left;">
                            <input type="text" class="form-input" name="license"/>
                        </div>
                        <div class="clear-both"></div>
                    </div>

                    <div class="form-group" style="margin-top: 10px;">
                        <p>Please fill your license in the form and click the "Install" button. The tool auto-downloads the newest library from D2dSoft's server and installs it. After that, you can run the migration.</p>
                        <p>If you don't have the license, please go to the <a href="https://d2d-soft.com/">D2dSoft website</a> to buy a license or try to run the free migration.</p>
                    </div>
                </div>
                <div class="box-action">
                    <div class="action-left"></div>
                    <div class="action-center">
                        <a href="javascript: void(0)" class="next-action button-action action-submit">Install</a>
                    </div>
                    <div class="action-right"></div>
                </div>
            </div>

        </div>
    </form>

</div>

<script type="text/javascript">
    $(document).ready(function(){
        $.MigrationData({
            url: '<?php echo $form_url; ?>'
        });
    });
</script>