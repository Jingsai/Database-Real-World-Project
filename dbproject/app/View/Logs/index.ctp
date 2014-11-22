
<div class="form">
<h1>Logs</h1>            
<table>
    <thead>
        <tr>
            <th style="text-align: center;"><?php echo $this->Paginator->sort('username', 'Username');?>  </th>
            <th style="text-align: center;"><?php echo $this->Paginator->sort('ip', 'Ip');?></th>
            <th style="text-align: center;"><?php echo $this->Paginator->sort('time', 'LoginTime');?></th>
            <th style="text-align: center;"><?php echo $this->Paginator->sort('act','Action');?></th>
        </tr>
    </thead>
    <tbody>                   
        <?php $count=0; ?>
        <?php foreach($logs as $log): ?>                
        <?php $count ++;?>
        <?php if($count % 2): echo '<tr>'; else: echo '<tr class="zebra">' ?>
        <?php endif; ?>
            <td style="text-align: center;"><?php echo $log['Log']['username']; ?></td>
            <td style="text-align: center;"><?php echo $log['Log']['ip']; ?></td>
            <!--<td style="text-align: center;"><?php echo $this->Time->niceShort($log['Log']['time']); ?></td>-->
            <td style="text-align: center;"><?php echo $log['Log']['time']; ?></td>
            <td style="text-align: center;"><?php echo $log['Log']['act']; ?></td>
            </td>
        </tr>
        <?php endforeach; ?>
        <?php unset($log); ?>
    </tbody>
</table>
    <?php echo $this->Paginator->prev('<< ' . __('previous', true), array(), null, array('class'=>'disabled'));?>
    <?php echo $this->Paginator->numbers(array('class' => 'numbers'));?>
    <?php echo $this->Paginator->next(__('next', true) . ' >>', array(), null, array('class' => 'disabled'));?>
</div> 


