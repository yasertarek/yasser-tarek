<?php

namespace App\Http\Requests;

use App\Database\Models\Model;

class Validation
{
    private string $tarKey;
    private string $tarVal;
    private array $errors = [];

    public function getErrors()
    {
        return $this->errors;
    }

    public function getError(string $error)
    {
        if (isset($this->errors[$error])) {
            foreach ($this->errors[$error] as $errVal) {
                return $errVal;
            }
        }
        return null;
    }

    public function matchRegEx(string $pattern, string | null $errMsg = null)
    {
        if (!preg_match($pattern, $this->tarVal)) {
            $this->errors[$this->tarKey][__FUNCTION__] = $errMsg ? $errMsg : "{$this->tarVal} is Invalid";
        }
        return $this;
    }
    public function required(): self
    {
        if (empty($this->tarVal)) {
            $this->errors[$this->tarKey][__FUNCTION__] = "{$this->tarKey} Is Required";
        }
        return $this;
    }
    public function getMessage(string $err)  :string
    {
        return  "<p class='text-danger font-weight-bold'>".ucwords($this->getError($err))."</p>";
    }
    public function string(): self
    {
        if(gettype($this->tarVal) != 'string'){
            $this->errors[$this->tarKey][__FUNCTION__] = "{$this->tarKey} should be string !";
        }
        return $this;
    }
    
    public function unique(string $table,string $column)
    {
        $model = new Model;
        $stmt = $model->con->prepare("SELECT * FROM {$table} WHERE {$column} = ?");
        $stmt->bind_param('s',$this->tarVal);
        $stmt->execute();
        $result = $stmt->get_result();
        if($result->num_rows == 1){
            $this->errors[$this->tarKey][__FUNCTION__] = "{$this->tarKey} Already Exists";
        }
        return $this;
    }

    public function exists(string $table,string $column)
    {
        $model = new Model;
        $stmt = $model->con->prepare("SELECT * FROM {$table} WHERE {$column} = ?");
        $stmt->bind_param('s',$this->tarVal);
        $stmt->execute();
        $result = $stmt->get_result();
        if($result->num_rows == 0){
            $this->errors[$this->tarKey][__FUNCTION__] = "{$this->tarKey} Dosen't Exists";
        }
        return $this;
    }
    public function max(int $max) :self
    {
        if(strlen($this->tarVal) > $max){
            $this->errors[$this->tarKey][__FUNCTION__] = "{$this->tarKey} Must be less than {$max} Characters";
        }
        return $this;
    }

    public function min(int $min) :self
    {
        if(strlen($this->tarVal) < $min){
            $this->errors[$this->tarKey][__FUNCTION__] = "{$this->tarKey} Must be greater than {$min} Characters";
        }
        return $this;
    }

    public function confirmed($comparedValue) :self
    {
        if($this->tarVal != $comparedValue){
            $this->errors[$this->tarKey][__FUNCTION__] = "{$this->tarKey} Not Confirmed ";

        }
        return $this;
    }

    public function isIn(array $values)
    {
        if(! in_array($this->tarVal,$values)){
            $this->errors[$this->tarKey][__FUNCTION__] = "{$this->tarKey} Must be " . implode($values);
        }
        return $this;
    }
    /**
     * Get the value of tarKey
     */
    public function getTarKey()
    {
        return $this->tarKey;
    }

    /**
     * Set the value of tarKey
     *
     * @return  self
     */
    public function setTarKey($tarKey)
    {
        $this->tarKey = $tarKey;

        return $this;
    }

    /**
     * Get the value of tarVal
     */
    public function getTarVal(): string
    {
        return $this->tarVal;
    }

    /**
     * Set the value of tarVal
     *
     * @return  self
     */
    public function setTarVal(string $tarVal): self
    {
        $this->tarVal = $tarVal;

        return $this;
    }

}
