<?php

trait TraitTest {

    private $testResult = false;
    private $type;
    private $val;

    public function test($val) {

        $func             = $this->testFunc;
        $this->testResult = self::$func($val);

        if($this->testResult !== false) {

            $this->val = $val;
        }
        return true;
    }

    public function setReturnError() {

        $this->defaultState    = false;
        $this->emptyValueState = false;
        $this->errorState      = true;
        $this->value           = $this->errorValue;

        return true;
    }

    public function setDefaultValue() {

        $this->defaultState    = true;
        $this->emptyValueState = false;
        $this->errorState      = false;
        $this->value           = $this->defaultValue;

        return true;
    }

    public function setEmptyValue() {

        $this->defaultState    = false;
        $this->emptyValueState = true;
        $this->errorState      = false;
        $this->value           = $this->emptyValue;

        return true;
    }

    public function testFull($val) {

        switch($val) {

            case $this->emptyValueState:
                $this->setEmptyValue();
                return true;
            case $this->errorValue:
                $this->setReturnError();
                return false;
            case $this->defaultValue:
                $this->setDefaultValue();
                return true;
        }
        return self::test($val);
    }

    public function testInput($params) {

        foreach($params as $k => $v) {

           if(isset($this->attributList[$k]) === false) return false;

           $result = $this->attributList[$k]->test($v);

            if($result === false) {

                $this->return->setReturnError();
                return false;
            }
        }
        return true;
    }

    public function testOutput($return) {

        return $this->return->testFull();
    }
}
?>