<?php

namespace App\Http\Controllers;

use App\Repositories\CustomerRepository;
use App\Repositories\StakeholderRepository;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\URL;
use SimpleSoftwareIO\QrCode\Facades\QrCode;

class StakeholderController extends Controller
{
    private StakeholderRepository $stakeholderRepository;
    private CustomerRepository $customerRepository;

    public function __construct(StakeholderRepository $stakeholderRepo, CustomerRepository $customerRepo)
    {
        $this->stakeholderRepository = $stakeholderRepo;
        $this->customerRepository = $customerRepo;
    }
    public function generate(Request $request)
    {
        $stakeHolderData = $this->stakeholderRepository->getStakeholder(1, 'Cordia')->first();
        $customerData = $this->customerRepository->getCustomerStakeholderNull()->first();
        $path = URL::to('/api/public/scanQRCode/'.$customerData->id.'/'.$stakeHolderData->id);
        $qrcode = QrCode::size(400)->generate($path);
        return view('qrcode', compact('qrcode', 'path'));
    }
}
