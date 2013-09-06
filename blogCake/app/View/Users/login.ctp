<?php
echo $this->Form->create('User', array('action' => 'login'));
echo $this->Form->inputs(array(
    'legend' => __('Inicio de Seesion'),
    'username',
    'password'
));
echo $this->Form->end('Entrar');