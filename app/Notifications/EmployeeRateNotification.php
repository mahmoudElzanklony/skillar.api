<?php

namespace App\Notifications;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\MailMessage;
use Illuminate\Notifications\Notification;

class EmployeeRateNotification extends Notification
{
    use Queueable;

    private $employee_feedback;

    public function __construct($employee_feedback)
    {
        $this->employee_feedback = $employee_feedback;
    }
    /**
     * Create a new notification instance.
     *
     * @return void
     */


    /**
     * Get the notification's delivery channels.
     *
     * @param  mixed  $notifiable
     * @return array
     */
    public function via($notifiable)
    {
        return ['database'];
    }

    /**
     * Get the mail representation of the notification.
     *
     * @param  mixed  $notifiable
     * @return \Illuminate\Notifications\Messages\MailMessage
     */
    public function toMail($notifiable)
    {
        return (new MailMessage)
                    ->line('The introduction to the notification.')
                    ->action('Notification Action', url('/'))
                    ->line('Thank you for using our application!');
    }

    public function toDatabase(object $notifiable)
    {
        return [
            'data' => json_encode(['ar' => 'تمت عمل تقييم جديد في ملفك الشخصي من قبل '.$this->employee_feedback->sender->username,
                'en' =>  'New feed back has been made from '.$this->employee_feedback->sender->username], JSON_UNESCAPED_UNICODE),
            'sender' => auth()->id()
        ];
    }

    /**
     * Get the array representation of the notification.
     *
     * @param  mixed  $notifiable
     * @return array
     */
    public function toArray($notifiable)
    {
        return [
            //
        ];
    }
}
