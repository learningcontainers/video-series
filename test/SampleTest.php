<?php

namespace App\Test;

use PHPUnit\Framework\TestCase;

class SampleTest extends TestCase
{
    public function testTrue()
    {
        $this->assertTrue(true);
    }

    public function testFalse()
    {
        $this->assertFalse(false);
    }
}
