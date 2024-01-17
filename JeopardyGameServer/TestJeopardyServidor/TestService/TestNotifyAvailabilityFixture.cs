using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xunit;
using Moq;
using JeopardyGame.Service.InterfacesServices;
using JeopardyGame.Service.ServiceImplementation;
using System.Management.Automation.Language;
using JeopardyGame.Service;
using System.ServiceModel;
using TestJeopardyServidor.TestServerJeopardy;
namespace TestJeopardyServidor.TestService
{

    public class TestNotifyAvailabilityFixture : IDisposable
    {
        public static NotifyAvailabilityServiceClient proxyClientOne;
        public static NotifyAvailabilityCallBackImplementation callBackImplementationForCLientOne;

        public TestNotifyAvailabilityFixture() 
        {

            JeopardyGame.Host.Connection.OpenConnection.GetConectionString();

            int ID_USER_TO_TEST = 23;
            callBackImplementationForCLientOne = new NotifyAvailabilityCallBackImplementation();
            proxyClientOne = new NotifyAvailabilityServiceClient(new InstanceContext(callBackImplementationForCLientOne));
            proxyClientOne.SubscribeToAvailabityCallBackChannel(ID_USER_TO_TEST);

        }

        public void Dispose()
        {
            NotifyAvailabilityOperationsClient notifyAvailability = new NotifyAvailabilityOperationsClient();
            notifyAvailability.UserIsNotAvailable(22);

        }


        [Fact]
        public  async void TestCallBallResponseAvailabilitySucces()
        {
            int idNewUser = 22;
            int Online = 1;
            NotifyAvailabilityOperationsClient notifyAvailability = new NotifyAvailabilityOperationsClient();
            notifyAvailability.UserIsAvailable(idNewUser);
            await Task.Delay(3000);
            Assert.True(callBackImplementationForCLientOne.isNotified);
            Assert.Equal(idNewUser, callBackImplementationForCLientOne.idNewUser);
            Assert.Equal(Online, callBackImplementationForCLientOne.status );
        }

        [Fact]
        public async void TestCallBallUserNotAvailable()
        {
            int idNewUser = 22;
            int notOnline = 0;
            NotifyAvailabilityOperationsClient notifyAvailability = new NotifyAvailabilityOperationsClient();
            notifyAvailability.UserIsAvailable(idNewUser);
            await Task.Delay(3000);
            notifyAvailability.UserIsNotAvailable(idNewUser);
            await Task.Delay(3000);
            Assert.True(callBackImplementationForCLientOne.isNotified);
            Assert.Equal(idNewUser, callBackImplementationForCLientOne.idNewUser);
            Assert.Equal(notOnline, callBackImplementationForCLientOne.status);
        }

        [Fact]
        public async void TestCallBallUserPlaying()
        {
            int idNewUser = 22;
            int palying = 2;
            NotifyAvailabilityOperationsClient notifyAvailability = new NotifyAvailabilityOperationsClient();
            notifyAvailability.UserIsAvailable(idNewUser);
            notifyAvailability.UserIsNotAvailable(22);
            await Task.Delay(3000);
            Assert.True(callBackImplementationForCLientOne.isNotified);
            Assert.Equal(idNewUser, callBackImplementationForCLientOne.idNewUser);
            Assert.Equal(palying, callBackImplementationForCLientOne.status);
        }

    }


    public class NotifyAvailabilityCallBackImplementation : INotifyAvailabilityServiceCallback
    {
        public bool isNotified { get; set; }
        public int idNewUser { get; set; }
        public int status { get; set; }

        public NotifyAvailabilityCallBackImplementation()
        {
            isNotified = false;
        }
        public void ResponseOfPlayerAvailability(int status, int idFriend)
        {
            this.status = status;
            isNotified = true;  
            idNewUser = idFriend;
        }
    }

    
}
